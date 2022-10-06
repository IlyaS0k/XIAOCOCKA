import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
Window {
    width: 640
    height: 480
    visible: true
    Column{
        anchors.fill: parent
        spacing: 3
        Label {
            id: label
            text: "Текстовое поле"
        }
        ButtonGroup {
            id: btngroup
            onCheckedButtonChanged: label.text = btngroup.checkedButton.text
        }
        RadioButton {
            text: "Первая"
            ButtonGroup.group: btngroup
        }
        RadioButton {
            text: "Вторая"
            ButtonGroup.group: btngroup
        }
        RadioButton {
            text: "Третья"
            ButtonGroup.group: btngroup
        }
    }
}
