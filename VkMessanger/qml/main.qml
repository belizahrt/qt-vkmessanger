import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

import QtGraphicalEffects 1.13

Window {
    id: mainWindow

    visible: true
    width: 1280
    height: 960
    title: qsTr("VK Messanger")

    DirectLoginPage { id: directLoginPage }
    DialogsPage     { id: dialogsPage }
    TwoFactorPage   { id: twoFactorPage }
    CaptchaPage     { id: captchaPage }

    StackView {
        id: mainStackView

        anchors.fill: parent

        initialItem: directLoginPage
    }
}
