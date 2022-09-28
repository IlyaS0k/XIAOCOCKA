import QtQuick 2.15
import QtQuick.Window 2.15

Window {

    width: 640
    height: 480
    visible: true
    title: qsTr("Lab1-Task1")
    Rectangle {
        id: redsq
        width: 100
        height: 100
        color: "red"

     }
    Rectangle {
        id: greensq
        x: redsq.x + redsq.width
        y: redsq.y + redsq.height/2
        width: 100
        height: 100
        color: "green"

     }
    Rectangle {
        id: bluesq
        x:  greensq.x/2 + greensq.width
        y: -2*greensq.y + greensq.height
        width: 100
        height: 100
        color: "blue"


     }
    Text {
        text: qsTr("Квадрат")
        color: "white"
        anchors.fill: bluesq
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

}
