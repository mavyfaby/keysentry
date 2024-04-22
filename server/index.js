/**
 * KeySentry Websocket Server
 * An arduino based project that uses a Node.js server to communicate between a mobile client and a locker.
 * 
 * @author mavyfaby (Maverick Fabroa)
 */

const { WebSocketServer } = require('ws');
const { v4 } = require('uuid');
const url = require('url');

const ws = new WebSocketServer({
  port: 3000
});

// Map of connected clients
const clients = new Map();
// Locker
let locker = null;

/**
 * -2 = Locker is not connected
 * -1 = Unknown locker status
 * 0 = Locker is closed
 * 1 = Locker is open
 */

// Listen for connection event
ws.on("connection", (ws, req) => {
  // Assign a unique id to the client
  ws.id = v4();
  // Get query
  const query = url.parse(req.url, true).query;

  // If connected client is a mobile client
  if (query.type === "mobile") {
    // Log client connection
    console.log(`📱 Mobile connected [${req.socket.remoteAddress}]:`, ws.id);
    // Add the client to the map
    clients.set(ws.id, ws);

    // Listen for message event
    ws.on("message", (message) => {
      // Log the message
      console.log(`📡 Data from mobile (${req.socket.remoteAddress}): ` + message);
      
      // If locker is not connected
      if (!locker) {
        // Log the locker is not connected
        console.log("🔒 Locker is not connected.");
        // Send -2 to the mobile client
        ws.send("-2");
        return;
      }

      // Send the message to the locker
      locker?.send(message.toString());
    });
  }

  // If connected client is a locker
  else if (query.type === "locker") {
    // Log locker connection
    console.log(`🔒 Locker connected [${req.socket.remoteAddress}]:`, ws.id);
    // Add the locker to the map
    locker = ws;

    // Send 1 to connected clients
    for (const [id, client] of clients) {
      client.send(query.status == "1" ? "1" : "0");
    }

    // Listen for message event
    ws.on("message", (message) => {
      // Log the message
      console.log(`📡 Data from locker (${req.socket.remoteAddress}): ` + message);

      // If there are no connected mobile clients
      if (clients.size === 0) {
        // Log no connected mobile clients
        console.log("📱 No connected mobile clients.");
        return;
      }

      // Send the message to all connected mobile clients
      for (const [id, client] of clients) {
        client.send(message.toString());
      }
    });
  }

  // If connection is unknown
  else {
    // Log unknown connection
    console.log("❓ Unknown connection: ", req.socket.remoteAddress);
  }

  // Listen for close event
  ws.on("close", () => {
    // Log close connection
    console.log("❌ Connection closed: ", req.socket.remoteAddress);

    // If disconnected client is a mobile client
    if (query.type === "mobile") {
      // Remove the client from the map
      clients.delete(ws.id);
    }

    // If disconnected client is a locker
    else if (query.type === "locker") {
      // Close the locker connection
      locker?.close();
      locker = null;

      // Send -2 to connected clients
      for (const [id, client] of clients) {
        client.send("-2");
      }
    }
  });
});

// Log the server is running
console.log("KeySentry Websocket Server is running on port 3000.");