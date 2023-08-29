import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
	id: applicationWindow
	width: 800
	height: 480
	visible: true

	property int controlsHeight: 50
	property int controlsSpacing: 20

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

		RowLayout {
			anchors.fill: parent
			spacing: 0

			ColumnLayout {
			}
			ColumnLayout {
				Layout.fillWidth: true
				Layout.fillHeight: true				
				spacing: 0
					
				ColumnLayout {
				}
				ColumnLayout {
					Layout.alignment: Qt.AlignVCenter
					spacing: 20

					TextField {
						Layout.preferredWidth: 500
						Layout.preferredHeight: 50
					}
					TextField {
						Layout.preferredWidth: 500
						Layout.preferredHeight: 50
					}				
				}
				ColumnLayout {
					Layout.preferredWidth: 500
					Layout.preferredHeight: (applicationWindow.height
						- (controlsHeight * 2 + controlsSpacing)) / 2
					Button {
						Layout.preferredWidth: 200
						Layout.preferredHeight: 50
						Layout.topMargin: 20
						Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
					}
				}
			}
			ColumnLayout {
				Layout.preferredWidth: (applicationWindow.width - 500) / 2
				spacing: 0

				ColumnLayout {
					Layout.preferredHeight: (applicationWindow.height
						- (controlsHeight * 2 + controlsSpacing)) / 2
					Component.onCompleted: console.log(height)
				}
				ColumnLayout {
					Layout.preferredHeight: controlsHeight * 2 + controlsSpacing
					Button {
						Layout.preferredWidth: 100
						Layout.preferredHeight: 50
						Layout.leftMargin: 20
						Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
					}
					Component.onCompleted: console.log(height)
				}
				ColumnLayout {
					Layout.preferredHeight: (applicationWindow.height
						- (controlsHeight * 2 + controlsSpacing)) / 2
	
					Component.onCompleted: console.log(applicationWindow.height,
						Layout.preferredHeight)	
				}
			}
		}	
	}
}
