import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Third Project")

    Row {
        anchors.centerIn: parent
        spacing: 15

        Column {
            spacing: 25
            Repeater {
                model: 4
                Rectangle {
                    width: 56; height: 56
                    border.color: "orange"
                }
            }
        }

        Column {
            spacing: 25
            Repeater {
                model: 4
                Rectangle {
                    width: 56; height: 56
                    border.color: "red"
                }
            }
        }

        Column {
            spacing: 25
            Repeater {
                model: 4
                Rectangle {
                    width: 56; height: 56
                    border.color: "green"
                }
            }
        }

        Column {
            spacing: 25
            Repeater {
                model: 4
                Rectangle {
                    width: 56; height: 56
                    border.color: "blue"
                }
            }
        }

    }
}
