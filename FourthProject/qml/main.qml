import QtQuick 2.5
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FourthProject")

    ListView {
        id: view

        width: 200
        height: 350
        anchors.centerIn: parent

        model: 4

        delegate: Item {
            id: listDelegate

            width: view.width
            height: 40

            Rectangle {
                id: item
                anchors.fill: parent

                border {
                    color: "black"
                    width: 2
                }

                color: mouseArea.pressed ? "#00FF00" :  "transparent"

                Text {
                    anchors.left: parent.left
                    anchors.margins: 10
                    renderType: Text.NativeRendering
                    text: 'Item ' + index
                    font.pixelSize: 24
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    onClicked: {
                        console.log("Item " + index)
                    }
                }
            }
        }
    }
}
