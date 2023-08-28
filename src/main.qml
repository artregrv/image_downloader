import QtQuick
import QtQuick.Controls 2.15

ApplicationWindow {
	id: applicationWindow
	width: 800
	height: 480
	visible: true

	Rectangle {
		anchors.fill: parent
		gradient: Gradient {
			GradientStop {
				position: 0.0
				color: "#1A1E2B"
			}
			GradientStop {
				position: 1.0
				color: "#221A1A"
			}
		}
		Rectangle {
			anchors.centerIn: parent
			width: 500
			height: 50
			radius: 10
			gradient: Gradient {
				orientation: Gradient.Horizontal
				GradientStop {
					position: 0.0
					color: "#416C8B"
				}
				GradientStop {
					position: 1.0
					color: "#866378"
				}
			}		
		}
	}
}
