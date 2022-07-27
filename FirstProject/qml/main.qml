import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("First project")

    Column {
        anchors.centerIn: parent
        spacing: 25

        MyButton {
            text: qsTr("Button 1")
            colorTextButton: "#ffff00"
            textLog: "Нажата кнопка 1"
        }

        MyButton {
            text: qsTr("Button 2")
            colorTextButton: "#ff4500"
            textLog: "Нажата кнопка 2"
        }

        MyButton {
            text: qsTr("Button 3")
            colorTextButton: "#f5fffa"
            textLog: "Нажата кнопка 3"
        }
    }
}
