import QtAV 1.6
import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

Video {
    id: video
    source: ""
    volume: 0
    property bool isLoop: true
    property bool sure: false
    onStopped: {if(isLoop) video.play()}
    width: sure? 0 : 100; height: sure? 0 : 100
    opacity: sure? 0 : 1
    Rectangle{
        id: bg
        anchors.fill: parent
        color: "#00000000"
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered:{bg.border.width = 3; bg.border.color = "red"}
        onExited: {bg.border.width = 0; bg.border.color = ""}
        onDoubleClicked: {changeProp.show()}
    }

    function dialogShow(){
        changeProp.show()
    }

    Window{
        id: changeProp
        width: 300; height: 200
        title: "Music Propertied"
        Column{
            spacing: 20
            WELabel{proText: "source"; onTextChanged: {video.source = text; video.play()}
                ImageSelector{
                    Layout.fillWidth: true
                    x: 87
                    path : video.source
                    onPathChanged: video.source = path
                    //only mp3
                }
            }
            WELabel{proText: "isLoop"
                CheckBox{x: 87; onCheckedChanged: isLoop = checked}
            }
            WELabel{proText: "volume"; onTextChanged: {video.volume = parseFloat(text); video.play()}}
            WELabel{proText: "sure"
                CheckBox{x: 87; onCheckedChanged: sure = checked}
            }
        }
    }

}
