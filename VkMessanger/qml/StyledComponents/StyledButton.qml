import QtQuick 2.0
import QtQuick.Controls 2.12
import ColorScheme 1.0

Button {
    id: controlButton

    property alias foreground: controlForeground
    property alias fond: controlBackground

    text: qsTr("Button")

    contentItem: StyledText {
        id: controlForeground

        text: parent.text
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        id: controlBackground

        color: pressed ? ColorScheme.focused : (hovered ? ColorScheme.hovered : "transparent")
        border.width: 1
        border.color: ColorScheme.countour
        radius: 10
    }
}
