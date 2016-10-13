import QtQuick 2.7
import QtQuick.Window 2.0

Rectangle {
    width: 100; height: 100
    x: 0; y: 0
    color: "blue"

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
            if(e.angleDelta < 0){
                parent.width += 5
                parent.height += 5
            }else if(e.angleDelta > 0){
                parent.width -= 5
                parent.height -= 5
            }
        }
    }

    Window{
        id: dialog
        title: "Propertied"
        width: 300; height: 300
        color: systemPalette.window
        Column{
            y: 20
            spacing: 20
            WELabel {proText: "x"}
            WELabel {proText: "y"}
            WELabel {proText: "width"}
            WELabel {proText: "height"}
            WELabel {proText: "color"}
            WELabel {proText: "proText"}

        }

    }
}
