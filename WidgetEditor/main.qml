import QtAV 1.6
import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Window 2.0


ApplicationWindow {
    id: mainWindow
    visible: true
    width: 720
    height: 480
    title: "This is A Widget Editor"
    color: systemPalette.window
    menuBar: MenuBar{
        Menu{
            title: "File"
            MenuItem{text: "OutPut"; onTriggered: {outPut.textShow(); outPut.show()}}
            MenuItem{text: "Manage"; onTriggered: {objWindow.show()}}
            MenuItem{text: "Load"; onTriggered: {var text = outPut.getAllText()
                var newObj = Qt.createQmlObject(text, loadWindow)
                loadWindow.show()}}
        }
        Menu{
            title: "About"
            MenuItem{text: "About This"; onTriggered: about.show()}
        }
    }


    FontLoader{id: uiFont; source: "../font/liberationmono.ttf"}
    SystemPalette{id: systemPalette}
    Rectangle{
        id: whiteBg
        color: "white"
        width: 640; height: 480
        x: 0; y: 0
    }

    // ListView  get more buttons
    Column{
        x: 655; y: 25
        spacing: 20
        WEButtons{isWhat: "rect"; onClicked: {canvas.createRect()}}
        WEButtons{isWhat: "aniImg"; onClicked: {canvas.creatAnimatedImage()}}
        WEButtons{isWhat: "music"; onClicked: {canvas.creatMusic()}}
        WEButtons{isWhat: "Manager"; onClicked: {canvas.creatButton()}}
    }


    WECanvas{
        id: canvas
        x: 0; y: 0
    }

    WEText{
        id: outPut
    }

    AboutWindow{
        id: about
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
                onClicked: {canvas.getObj(index).dialogShow()}
            }
        }
    }

    Window{
        id: loadWindow
        title: "About The Author"
        width: 720; height: 500
        minimumWidth: 320; minimumHeight: 240
        modality: Qt.ApplicationModal
        color: systemPalette.window
        ScrollView{
            anchors.fill: parent
        }
    }






}
