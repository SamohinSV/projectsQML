import QtQuick 2.15

Rectangle {
    anchors.centerIn: parent
    color: "#adff2f"
    border.color: "#ff4500"
    border.width: 4
    radius: 8

    Text {
        anchors.centerIn:  parent
        text: "My Button"
        color: "#ff4500"
        font.pixelSize: 24
    }

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Одно нажатие")
        onDoubleClicked: console.log("Два нажатия")
        onPressAndHold: console.log("Нажатие и удержание")
    }
}
