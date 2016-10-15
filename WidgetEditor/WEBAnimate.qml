import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

AnimatedImage {
    id: aniImageBg
    width: 100
    height: 100
    playing: true
    Rectangle{
        id: markPosition
        width: parent.width; height: parent.height
        color: "#00000000"
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {markPosition.border.width = 3; markPosition.border.color = "red"}
        onExited: {markPosition.border.width = 0; markPosition.border.color = "#00000000"}
        onDoubleClicked: {changeProp.show()}
        drag.target: parent
        drag.axis: Drag.XAndYAxis
        drag.minimumX: 0; drag.maximumX: 640 - aniImageBg.width
        drag.minimumY: 20; drag.maximumY: 480 - aniImageBg.height
    }

    function dialogShow(){
        changeProp.show()
    }

    Window{
        id: changeProp
        title: "Propertied"
        width: 300; height: 400
        color: systemPalette.window
        Column{
            spacing: 20
            WELabel{proText: "x"; onTextChanged: {aniImageBg.x = parseInt(text)}}
            WELabel{proText: "y"; onTextChanged: {aniImageBg.y = parseInt(text)}}
            WELabel{proText: "width"; onTextChanged: {aniImageBg.width = parseInt(text)}}
            WELabel{proText: "height"; onTextChanged: {aniImageBg.height = parseInt(text)}}
            WELabel{proText: "source"
                ImageSelector{
                    Layout.fillWidth: true
                    x: 87
                    onPathChanged: {aniImageBg.source = path; aniImageBg.playing = true}
                }
            }
        }
    }
}
