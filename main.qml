import QtQuick 2.15
import QtQuick.Window 2.15
import Notebook 1.0
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    Notebook {
        id: notebook
    }
    Column
    {

        spacing: 2

        ListView {
            height: 200
            width: 200
            model: notebook.bigstring.split(';')
            delegate: Column {
                Text {
                    text: modelData
                }
             }
        }
        TextField {
               id: textField
               width: parent.width
           }
    Button {
               text: "Добавить"
               onClicked: notebook.addNote(textField.text)
           }
    Button {
               text: "Удалить"
               onClicked: notebook.eraseNote()
           }
    }
}

