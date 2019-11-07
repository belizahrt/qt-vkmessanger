import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import ColorScheme 1.0
import "StyledComponents"

DefaultPage {
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 15
        width: 200

        StyledText {
            text: qsTr('Enter code:')
            font.pixelSize: 15
        }

        RowLayout {
            Layout.fillWidth: true

            StyledTextField {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr('Code')
                implicitHeight: 40
                font.pixelSize: 15

                validator: IntValidator {
                    bottom: 0
                    top: 99999999
                }
            }

            StyledButton {
                text: qsTr('OK')
                implicitWidth: 40
                implicitHeight: 40

                onClicked: {
                    mainStackView.push(dialogsPage)
                }
            }
        }

        StyledButton {
            text: qsTr('<font color="%1">Send again').arg(ColorScheme.highlighted)
            implicitHeight: 20
            fond.border.width: 0
            fond.radius: 0
        }
    }
}
