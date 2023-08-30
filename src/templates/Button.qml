import QtQuick
import QtQuick.Controls
import QtQuick.Templates as T

T.Button {
    id: control
    background: Rectangle {
        anchors.fill: parent
        radius: 10
        gradient: Gradient {
            orientation: Qt.Horizontal

            GradientStop {
                position: 0.0
                color: control.pressed ? "#664258" : control.hovered ? "#634A81" : "#866278"
            }
            GradientStop {
                position: 1.0
                color: control.pressed ? "#432A61" : control.hovered ? "#866278" : "#634A81"
            }
        }
    }
    contentItem: Label {
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: parent
        text: control.text
        color: "#FFFFFF"
    }
}
