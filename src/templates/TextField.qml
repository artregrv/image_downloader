import QtQuick
import QtQuick.Controls.impl
import QtQuick.Templates as T

T.TextField {
    id: control
    background: Rectangle {
        anchors.fill: parent
        radius: 10
        gradient: Gradient {
            orientation: Qt.Horizontal

            GradientStop {
                position: 0.0
                color: "#866378"
            }
            GradientStop {
                position: 1.0
                color: "#416C8B"
            }
        }
        border.color: "#FFFFFF"
        border.width: control.focus ? 1 : 0
    }
    leftPadding: 10
    rightPadding: 10
    verticalAlignment: Text.AlignVCenter
    color: "#FFFFFF"
    selectionColor: "#1A1D2A"
}
