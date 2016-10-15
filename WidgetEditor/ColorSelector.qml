import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2

RowLayout {
    id: colorSelector

    property string color: "#000000"

    Rectangle {
        Layout.fillWidth: true
        height: button.height * 0.8
        Layout.alignment: Qt.AlignHCenter
        color: colorSelector.color
    }

    Button {
        id: button
        text: "Browse..."
        onClicked: {
            colorDialog.color = colorSelector.color
            colorDialog.open()
        }
    }

    Button {
        id: button2
        anchors.left: button.right
        anchors.leftMargin: 5
        anchors.top: button.top
        text: "Opacity = 0"
        onClicked: {
            rect.color = "#00000000"
        }
    }

    ColorDialog {
        id: colorDialog
        modality: Qt.ApplicationModal
        title: "Please choose a color"
        onAccepted: colorSelector.color = currentColor
    }
}
