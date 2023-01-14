#include <WiFi.h>

const char* ssid = "ROVER2122";
const char* password =  "mimuniovi2018";

const uint16_t port = 5000;
const char * host = "192.168.100.102";
WiFiClient client;

void setup()
{

	Serial.begin(9600);

	WiFi.begin(ssid, password);
	while (WiFi.status() != WL_CONNECTED) {
	delay(500);
	Serial.println("...");
	}

	Serial.print("WiFi connected with IP: ");
	Serial.println(WiFi.localIP());
}

void loop()
{
	while(!client.connected()){
	client.connect(host, port);
	Serial.println("Loop 1");
	Serial.println("Connection to host failed");
	delay(1000);
	}

	if(client.connected()) {
	Serial.println("Send MSG to BBB");
	client.print("<motor_driver><motor_speed_left>10</motor_speed_left><motor_speed_right>20</motor_speed_right></motor_driver>");
	}

	char c;
	String msg;

	while (! client.available())
		delay(1);

	while (client.available()) {
		Serial.print("Reading msg ...");
		c = client.read();
		msg += (c);
		Serial.println(c);
		if (c=='\n')
			break;
	}

	Serial.println(msg);
	
	delay(10000);
}