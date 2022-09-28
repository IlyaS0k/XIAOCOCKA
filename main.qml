import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true

    Button {
            id: addButton
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            text: qsTr("Добавить")
            property int clickCounter: 0
            onClicked: {
                        clickCounter++;
                        myList.append({"number": clickCounter.toString(), "rectColor": clickCounter&1 ? "red" : "blue"})
                    }
        }

    ListModel {
        id: myList


    }
    ListView {
        width: 200
        height: 400
        model: myList
        delegate: Rectangle {
            width: 100;
            height: 80;
            color: rectColor;
            Text {
                text: number;
            }
            MouseArea {
                   anchors.fill: parent
                   onClicked: myList.remove(this);
               }
        }
    }
}
