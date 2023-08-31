import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "qrc:qml/templates"

ApplicationWindow {
	id: applicationWindow
	width: 800
	height: 480
	visible: true

    property int controlsHeight: 50
	property int controlsSpacing: 20
    property int textFieldWidth: 500
    property int horisontalSpacing: (applicationWindow.width - textFieldWidth) / 2
    property int verticalSpacing: (applicationWindow.height
                                   - (controlsHeight * 2 + controlsSpacing)) / 2

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
                        id: imageUrlField
                        Layout.preferredWidth: textFieldWidth
                        Layout.preferredHeight: controlsHeight
                        onEditingFinished: {
                            downloader.imageUrl = imageUrlField.text
                        }
					}
                    TextField {
                        id: savePathField
                        Layout.preferredWidth: textFieldWidth
                        Layout.preferredHeight: controlsHeight
                        onEditingFinished: {
                            downloader.savePath = savePathField.text
                        }
					}				
				}
				ColumnLayout {
					Layout.preferredWidth: 500
                    Layout.preferredHeight: verticalSpacing

					Button {
						Layout.preferredWidth: 200
                        Layout.preferredHeight: controlsHeight
						Layout.topMargin: 20
						Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        text: qsTr("Download")
                        onClicked: {
                            downloader.download()
                        }
					}
				}
			}
			ColumnLayout {
				Layout.preferredWidth: (applicationWindow.width - 500) / 2
				spacing: 0

				ColumnLayout {
                    Layout.preferredHeight: verticalSpacing
				}
				ColumnLayout {
					Layout.preferredHeight: controlsHeight * 2 + controlsSpacing

					Button {
						Layout.preferredWidth: 100
                        Layout.preferredHeight: controlsHeight
						Layout.leftMargin: 20
						Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
                        text: qsTr("Open")
					}
				}
				ColumnLayout {
                    Layout.preferredHeight: verticalSpacing
				}
			}
		}	
	}
}
