#include <fstream>
#include <sstream>
#include <string>

using namespace std;

// Öffnet die XML-Datei und liest den Inhalt in einen String
string readXMLFile(const string& filename)
{
    ifstream file(filename);
    if (!file.is_open())
    {
        // Fehlermeldung, falls die Datei nicht geöffnet werden konnte
        cerr << "Fehler beim Öffnen der Datei " << filename << endl;
        return "";
    }

    // Lesen des gesamten Dateiinhalts in einen String
    stringstream xmlStream;
    xmlStream << file.rdbuf();
    return xmlStream.str();
}

// Durchläuft den String mit dem XML-Inhalt zeichenweise und extrahiert die Elemente
void parseXML(const string& xml)
{
    // Hier kommt der Code hin, der die XML-Elemente extrahiert
}

int main()
{
    // Beispiel für die Verwendung der Funktionen
    string xml = readXMLFile("example.xml");
    parseXML(xml);

    return 0;
}




QString xmlData = "..."; // XML-Daten als QString
QXmlStreamReader reader(xmlData);

while (!reader.atEnd()) {
   reader.readNext();

   if (reader.isStartElement()) {
      // Wenn das aktuelle Element ein Start-Element ist,
      // lesen Sie die Attribute und Element-Namen aus
      QString elementName = reader.name().toString();
      QXmlStreamAttributes attributes = reader.attributes();

      // Verarbeiten Sie die Daten hier...
   }
}



QString xmlData = "..."; // XML-Daten als QString
QDomDocument doc;

if (doc.setContent(xmlData)) {
   // XML-Daten wurden erfolgreich in das Dokument geladen
   // Verarbeiten Sie die Daten hier...
}






