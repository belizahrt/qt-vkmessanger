import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "StyledComponents"

DefaultPage {
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 15
        width: 200

        StyledText {
            text: qsTr('Login Page')
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 15
        }

        StyledTextField {
            placeholderText: qsTr('Login')
            Layout.fillWidth: true
        }

        StyledTextField {
            placeholderText: qsTr('Password')
            Layout.fillWidth: true
            echoMode: TextInput.Password
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter

            StyledCheckBox {
                text: qsTr('Remember me')
            }

            StyledButton {
                text: qsTr('Login')
                implicitWidth: 75

                onClicked: mainStackView.push(twoFactorPage)
            }
        }
    }
}
