import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
Window {
    width: 640
    height: 480
    visible: true

    Column {
       anchors.fill: parent
        spacing: 5
        Label {
            text: "Текстовое поле"
            id: label
        }
       Button {
           text: "Button"
           onPressed: label.text = "Нажата"
           onClicked: label.text = "Отпущена"
       }

    }


}
