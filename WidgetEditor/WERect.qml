import QtQuick 2.7
import QtQuick.Window 2.0

Rectangle {
    id: rect
    width: 100; height: 100
    x: 0; y: 0
    color: "blue"
    property string source
    property string text
    property int textSize
    property string textColor
    Image{
        anchors.fill: parent
        source: parent.source
    }

    Text{
        anchors.fill: parent
        text: parent.text
        color: parent.textColor
        font.family: uiFont.name
        font.pixelSize: parent.textSize
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {parent.border.width = 3; parent.border.color = "red"}
        onExited: {parent.border.width = 0; parent.border.color = ""}
        onDoubleClicked: {
            dialog.show()
        }
        drag.target: parent
        drag.axis: Drag.XAndYAxis


        onWheel:function(e){
            if(e.angleDelta.y < 0){
                parent.width += 5
                parent.height += 5
            }else if(e.angleDelta.y > 0){
                parent.width -= 5
                parent.height -= 5
            }
        }
    }
    Window{
        id: dialog
        title: "Propertied"
        width: 300; height: 400
        color: systemPalette.window
        Column{
            y: 20
            spacing: 20
            WELabel {proText: "x"; onTextChanged: {rect.x = parseInt(text)}}
            WELabel {proText: "y"; onTextChanged: {rect.y = parseInt(text)}}
            WELabel {proText: "width"; onTextChanged: {rect.width = parseInt(text)}}
            WELabel {proText: "height"; onTextChanged: {rect.height = parseInt(text)}}
            WELabel {proText: "color"; onTextChanged: {rect.color = text}}
            WELabel {proText: "source"; onTextChanged: {rect.source = text}}
            WELabel {proText: "recText"; onTextChanged: {rect.text = text}}
            WELabel {proText: "textSize"; onTextChanged: {rect.textSize = parseInt(text)}}
            WELabel {proText: "textColor"; onTextChanged: {rect.textColor = text}}

        }

    }
}
