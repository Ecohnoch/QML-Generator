import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
Button {
    id: button
    property int textSize
    font.pixelSize: textSize
    font.family: uiFont.name
    text: "Manger"
    property int signals

    Rectangle{
        id: bg
        anchors.fill: parent
        color: "#00000000"
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {bg.border.width = 3; bg.border.color = "red"}
        onExited: {bg.border.width = 0; bg.border.color = ""}
        drag.target: parent
        drag.axis: Drag.XAndYAxis
        drag.minimumX: 0; drag.maximumX: 640 - button.width
        drag.minimumY: 20; drag.maximumY: 480 - button.height
        onDoubleClicked: buttonWindow.show()
    }

    Window{
        id: buttonWindow
        title: "Button Propertied"
        width: 300; height: 400
        color: systemPalette.window
        Column{
            id: column
            y: 20
            spacing: 20
            WELabel {proText: "x"; onTextChanged: {button.x = parseInt(text)}}
            WELabel {proText: "y"; onTextChanged: {button.y = parseInt(text)}}
            WELabel {proText: "width"; onTextChanged: {button.width = parseInt(text)}}
            WELabel {proText: "height"; onTextChanged: {button.height = parseInt(text)}}
            WELabel {proText: "recText"; onTextChanged: {button.text = text}}
            WELabel {proText: "textSize"; onTextChanged: {button.textSize = parseInt(text)}}
        }
        Button{
            y: column.y + column.height + 20
            x: 20
            width: 200; height: 50
            text: "Chose A Signal"
            font.pixelSize: 15
            font.family: uiFont.name
            onClicked:{
                choseASignal.show()
            }
        }
    }

    Window{
        id: choseASignal
        title: "Chose A Signal"
        width: 200; height: 40
        ComboBox {
            id: cbx
            x: 20; y: 20
            model: ListModel {
                id: cbItems
                ListElement { text: "onClicked"}
                ListElement { text: "onEntered"}
                ListElement { text: "onExited"}
            }
            width: 150; height: 50
            onCurrentIndexChanged: {signals = currentIndex}
        }
        Button{
            text: "Sure"
            font.family: uiFont.name
            x: 20 + cbx.width + 20; y: cbx.y
            width: 50; height: 50
            onClicked: objWindow.show()
        }
    }

    Window{
        id: objWindow
        title: "Objects"
        width: 300; height: 400
        color: systemPalette.window
        Repeater{
            y: 20; height: 300
            model: canvas.getObjNum()
            Button{
                y: 20 + 60 * index
                text: canvas.getObjName(index)
                font.family: uiFont.name
                onClicked: {canvas.getObj(index).dialogShow()}
            }
        }
    }

}
