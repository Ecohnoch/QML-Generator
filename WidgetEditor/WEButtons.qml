import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Button {
    text: "Rect"
    style: ButtonStyle {
        background: Rectangle {
            implicitWidth: 50
            implicitHeight: 50
            border.width: control.activeFocus ? 2 : 1
            border.color: "#888"
            radius: 4
            gradient: Gradient {
                GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
            }
        }
    }
}
