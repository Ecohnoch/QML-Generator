import QtQuick 2.7
import QtQuick.Controls 1.3

Item {
    width: 300; height: 20
    property string proText
    property string text
    Text{
        id: propertyName
        text: proText
        x: 25; y: 5
        width: 60; height: 20
        font.family: uiFont.name
    }

    TextField{
        id: propertyChange
        x: propertyName.x + propertyName.width; y: 0
        anchors.centerIn: parent
        onActiveFocusChanged: text = propertyChange.text
        font.family: uiFont.name

    }
}
