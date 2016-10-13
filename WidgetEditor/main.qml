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
    FontLoader{id: uiFont; source: "../font/liberationmono.ttf"}
    menuBar: MenuBar{
        Menu{
            title: "File"
            MenuItem{
                text: "OutPut"
                onTriggered: {outPut.show()}
            }
            MenuItem{
                text: "InPut"
                onTriggered: {}
            }
        }
    }
    SystemPalette{
        id: systemPalette
    }

    Rectangle{
        id: whiteBg
        color: "white"
        width: 640; height: 480
        x: 0; y: 0
    }
    // ListView  get more buttons
    WEButtons{
        id: buttons
        x: 655; y: 25
        onClicked:{
            canvas.createRect()
        }
    }

    WECanvas{
        id: canvas
        x: 0; y: 0
    }

    WEText{
        id: outPut
    }

    WERect{

    }




}
