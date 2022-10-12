import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    Dialog {
       id: testDialog
       title: "Диалог"
                implicitWidth: parent.width
                implicitHeight: parent.height
                Column {
                    anchors.fill: parent
                    spacing: 3
                    Label {
                        id: label
                        width: 100
                        height: 50
                    }
                    TextField {
                        id: tf1
                        width: 100
                        height: 50
                    }
                    TextField {
                        id: tf2
                        width: 100
                        height: 50
                    }
                    Button {
                        text: qsTr("Подтвердить")
                        width: 100
                        height: 50
                        onClicked: label.text = parseInt(tf1.text) + parseInt(tf2.text)
                    }

                }

    }
    Button {
           id: openDialogButton
           anchors.centerIn: parent
           text: qsTr("Открыть диалог")
           onClicked: {
               testDialog.open();
           }
       }
}
