
#include <QFile>
#include <QXmlStreamReader>

// Öffnen der Datei
QFile file("dateipfad/dateiname.xml");
if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    return;

// Erstellen eines QXmlStreamReader-Objekts
QXmlStreamReader xmlReader(&file);

// Durchlaufen des XML-Dokuments
while (!xmlReader.atEnd()) {
    // Lesen des nächsten Elements
    xmlReader.readNext();

    // Überprüfen, ob das Element ein Start-Tag ist
    if (xmlReader.isStartElement()) {
        // Auslesen des Elementnamens
        QString elementName = xmlReader.name().toString();

        // Hier können Sie nun die Attribute und Kindelemente des Elements
        // auslesen und verarbeiten.
    }
}

// Überprüfen, ob beim Auslesen der XML-Datei Fehler aufgetreten sind
if (xmlReader.hasError()) {
    // Fehlerbehandlung...
}



// zweiter Versuch

QFile xmlFile("dateiname.xml");
if (!xmlFile.open(QIODevice::ReadOnly | QIODevice::Text)) {
    // Fehlerbehandlung
}

QXmlStreamReader reader(&xmlFile);

while (!reader.atEnd() && !reader.hasError()) {
    // Lese das nächste Element
    QXmlStreamReader::TokenType token = reader.readNext();

    // Überprüfe, ob das Element ein Start- oder End-Tag ist
    if (token == QXmlStreamReader::StartDocument) {
        continue;
    }

    if (token == QXmlStreamReader::StartElement) {
        // Dies ist ein Start-Tag. Hole den Namen des Elements.
        QString name = reader.name().toString();

        // Bearbeite das Element basierend auf seinem Namen
        if (name == "elementname") {
            // Dies ist ein Element mit dem Namen "elementname".
            // Hole die Attribute des Elements und bearbeite sie.
        }
    }
}

if (reader.hasError()) {
    // Fehlerbehandlung
}

// Schließe die Datei
xmlFile.close();
