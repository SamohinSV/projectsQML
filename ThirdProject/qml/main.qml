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
            model: [{color:"orange", count:3}, {color:"red", count:5},
                {color:"green", count:7}, {color:"blue", count:4}]

//            ListModel {
//                ListElement {
//                    myNumber: 3
//                    myColor: "orange"
//                }
//                ListElement {
//                    myNumber: 5
//                    myColor: "red"
//                }
//                ListElement {
//                    myNumber: 7
//                    myColor: "green"
//                }
//                ListElement {
//                    myNumber: 4
//                    myColor: "blue"
//                }
//            }

            Column {
                id: column

                property var currentColor: modelData.color
                property var currentCount: modelData.count

                spacing: 25

                Repeater {
                    model: column.currentCount

                    Rectangle {
                        width: 56
                        height: 56
                        border.color: column.currentColor
                    }
                }
            }
        }
    }
}
