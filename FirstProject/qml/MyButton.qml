import QtQuick 2.15
import QtQuick.Controls 2.4

Button {
    id: myButton

    property string colorTextButton
    property string textLog

    height: 50
    width: 200
    font.pointSize: 20

    onClicked: {
        console.log(textLog)
    }

    contentItem: Text {
        text: myButton.text
        font: myButton.font
        color: colorTextButton
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        color: "#32cd32"

    }
}
