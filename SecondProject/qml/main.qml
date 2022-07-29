import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height
        border.color: "#000000"
        border.width: 4
        color: "#87cefa"
    }

    MyButton {
        height: 200
        width: 300
    }
}
