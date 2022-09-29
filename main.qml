import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import Counter 1.0
Window {
    width: 640
    height: 480
    visible: true
    Counter {
       id: counter
    }

    Label {
        id: label
        width: 100
        height: 100
        text: counter.value


    }
    Button {
        id: incrementButton
        text: "+1"
        width: 100
        height: 100
        x: 200
        y: 300
        onClicked: counter.increase()
    }
    Button {
        id: nullButton
        text: "=0"
        width: 100
        height: 100
        x: 0
        y: 300;
        onClicked: counter.decrease()
    }
}
