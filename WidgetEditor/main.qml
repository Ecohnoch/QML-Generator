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
            MenuItem{text: "OutPut"; onTriggered: mainView.outPutWindowShow()}
            MenuItem{text: "Manage"; onTriggered: mainView.objWindowShow()}
            MenuItem{text: "Load"; onTriggered: {var text = mainView.getAlltext()
                var newObj = Qt.createQmlObject(text, mainView.getLoadWindow())
                mainView.getLoadWindow().show()}}
        }
        Menu{
            title: "About"
            MenuItem{text: "About This"; onTriggered: about.show()}
        }
    }

    SystemPalette{
        id: systemPalette
    }

    FontLoader{
        id: uiFont
        source: "../font/liberationmono.ttf"
    }

//    WEItem{
//        id: item
//    }

    TabView{
        id: mainView
        width: 640; height: 480
        property var tabs: []
        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                if (mouse.button === Qt.RightButton) {
                    contentMenu.popup()
                }
            }
        }
        Menu{
            id: contentMenu
            MenuItem{
                text: "add"
                onTriggered: {
                    mainView.addComponent()
                }
            }
            MenuItem{
                text: "delete"
                onTriggered: {
                    mainView.deleteComponent()
                }
            }
            MenuItem{
                text: "rename"
                onTriggered: {
                }
            }
        }
        WETab{
            title: "defaultItem"
        }

        function outPutWindowShow(){
            mainView.getTab(currentIndex).item.outPutShow()
        }
        function objWindowShow(){
            mainView.getTab(currentIndex).item.objWindowShow()
        }
        function getAlltext(){
            return mainView.getTab(currentIndex).item.getAllText()
        }
        function getLoadWindow(){
            return mainView.getTab(currentIndex).item.getLoadWindow()
        }

        function addComponent(){
            var component = Qt.createComponent("WETab.qml")
            var comObj = component.createObject(mainView)
            tabs.push(comObj)
            comObj.title = "Item" + tabs.length
        }

        function deleteComponent(){
            mainView.removeTab(mainView.currentIndex)
        }

        function renameComponent(){
        }

    }

    AboutWindow{
        id: about
    }

}
