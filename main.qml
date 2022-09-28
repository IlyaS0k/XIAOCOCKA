import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.XmlListModel 2.0
Window {
    width: 640
    height: 480
    visible: true
    XmlListModel {
     id: xmlListModel
     source: "http://www.cbr.ru/scripts/XML_daily.asp"
     query: "/ValCurs/Valute"
     XmlRole { name:"NumCode" ; query:"NumCode/string()"}
     XmlRole { name:"CharCode" ; query:"CharCode/string()"}
     XmlRole { name:"Nominal" ; query:"Nominal/string()"}
     XmlRole { name:"Name" ; query:"Name/string()"}
     XmlRole { name:"Value" ; query:"Value/string()"}
    }
    ListView {
     anchors.fill: parent
     model: xmlListModel
     delegate: Column {
     Text {
         text: " NumCode: " + NumCode + "; CharCode: " + CharCode + "; Nominal: " + Nominal + "; Name: " + Name + "; Value: " + Value +";"}
        }
    }
}
