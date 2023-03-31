#include <WiFi.h>

const char* ssid = "ROVER2122";
const char* password =  "mimuniovi2018";

const uint16_t port = 5000;
const char * host = "192.168.100.102";
WiFiClient client;

void GetXmlStr(const QString &textXml, const QString &tagXml)
{
    QString ret;
    int istart, iend;
    int indexStart, lengStr;


    istart = textXml.indexOf("<"+tagXml+">");
    iend = textXml.indexOf("</"+tagXml+">");
    indexStart = istart+tagXml.length()+2;
    lengStr = iend - indexStart;
    ret = textXml.mid(indexStart, lengStr);

    return ret;
}

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
	client.print("hello from the Esp32");
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

	String esp32 = GetXmlStr(msg, "esp32_top");
	String pulsar  = GetXmlStr(esp32, "pulsar");
	String video = GetXmlStr(esp32, "video");

	if video == "1" {
		//Llamar a la funcion de video
	}

	if pulsar == "1" {
		//Llamar a la funcion de pulsar
	}



	Serial.println(msg);
	
	delay(10000);
}