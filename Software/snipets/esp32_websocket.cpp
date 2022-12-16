#include <WebSocketsClient.h>

// Replace with your websocket server's address and port
const char* host = "ws://yourserver.com:1234";

// Create a WebSocketsClient instance
WebSocketsClient client;

void setup() {
    // Connect to the websocket server
    client.begin(host);

    // Set the event handler for incoming messages
    client.onEvent([](WStype_t type, uint8_t * payload, size_t length) {
        switch (type) {
            // When the connection is established
            case WStype_CONNECTED:
                Serial.println("Connected to websocket server");
                break;

            // When a message is received
            case WStype_TEXT:
                Serial.println("Message received:");
                Serial.println((char*)payload);
                break;

            // When the connection is closed
            case WStype_DISCONNECTED:
                Serial.println("Disconnected from websocket server");
                break;
        }
    });
}

void loop() {
    // Handle websocket events
    client.loop();

    // Send a message to the server after 5 seconds
    if (millis() > 5000 && client.isConnected()) {
        client.sendTXT("Hello from the ESP32!");
        Serial.println("Message sent");
    }
}
