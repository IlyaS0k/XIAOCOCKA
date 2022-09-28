import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ListModel {
        id: model
        ListElement {
               rectColor: "red"
               rectText: "red"
           }
        ListElement {
               rectColor: "blue"
               rectText: "blue"
           }
        ListElement {
               rectColor: "green"
               rectText: "green"
           }
        ListElement {
               rectColor: "yellow"
               rectText: "yellow"
           }
        }

    ListView {
        width: 400;
        height: 400
        model: model
        delegate: Rectangle {
            width: 120
            height: 80
            color: rectColor
            Text {
                text: rectText
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

    }
}
