import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 640
    visible: true
    title: qsTr("Third Project")

    Row {
        anchors.centerIn: parent
        spacing: 15

        Repeater {
            model: [
                {color: "orange",   count: 3},
                {color: "red",      count: 5},
                {color: "green",    count: 7},
                {color: "blue",     count: 4}
            ]

            Column {
                id: oneColumn

                property var currentColor: modelData.color
                property var currentCount: modelData.count

                spacing: 25

                Repeater {
                    model: oneColumn.currentCount

                    Rectangle {
                        width: 56
                        height: 56
                        border.color: oneColumn.currentColor
                    }
                }
            }
        }

        Repeater {
            model: ListModel {
                ListElement {
                    myNumber: 3
                    myColor: "black"
                }
                ListElement {
                    myNumber: 2
                    myColor: "brown"
                }
                ListElement {
                    myNumber: 1
                    myColor: "gray"
                }
                ListElement {
                    myNumber: 4
                    myColor: "purple"
                }
            }

            Column {
                id: twoColumn

                property var currentCount: model.myNumber
                property var currentColor: model.myColor

                spacing: 25

                Repeater {
                    model: twoColumn.currentCount

                    Rectangle {
                        width: 56
                        height: 56
                        border.color: twoColumn.currentColor
                    }
                }
            }
        }
    }
}
