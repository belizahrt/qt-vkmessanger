import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import ColorScheme 1.0
import "StyledComponents"

import QtGraphicalEffects 1.13

DefaultPage {
    id: captchaPage

    ColumnLayout {
        spacing: 15
        anchors.centerIn: parent
        width: 200

        Image {
            Layout.alignment: Qt.AlignHCenter
            source: "qrc:/imgs/captcha.jpg"
        }

        RowLayout {
            StyledTextField {
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                placeholderText: qsTr('Enter captcha')
            }

            StyledButton {
                text: qsTr('OK')

                onClicked: mainStackView.pop(directLoginPage)
            }
        }

        StyledButton {
            text: qsTr('Refresh')
            implicitHeight: 20
            fond.border.width: 0
            fond.radius: 0
            foreground.color: ColorScheme.highlighted
        }
    }
}
