import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.2
import ColorScheme 1.0
import "StyledComponents"

import QtGraphicalEffects 1.13

DefaultPage {
    id: captchaPage

    background: FastBlur {
        radius: 50
        source: mainStackView
        anchors.fill: parent
    }

    ColumnLayout {
        spacing: 10
        anchors.centerIn: parent
        width: 150

        Image {
            Layout.alignment: Qt.AlignHCenter
            source: "qrc:/imgs/captcha.jpg"
        }

        StyledButton {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr('Refresh')
            implicitHeight: 15
            fond.border.width: 0
            fond.radius: 0
            foreground.color: ColorScheme.highlighted
        }

        StyledTextField {
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            placeholderText: qsTr('Enter captcha')
        }

        StyledButton {
            text: qsTr('OK')
            Layout.fillWidth: true

            onClicked: captchaPage.visible = false
        }
    }
}
