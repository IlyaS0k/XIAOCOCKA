import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    Rectangle {
        id: rect
        width: 200
        height: 200
        color: "black"
        anchors.horizontalCenter : parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
                anchors.fill: parent
                onClicked: {
                    animateWidth.start()
                    animateRotation.start()
                }
            }

            PropertyAnimation {id: animateWidth; target: rect; properties: "width"; from: 200; to: 100; duration: 500}
            RotationAnimation {id: animateRotation; target: rect; from: 0; to: 45; duration: 500}

     }

}
