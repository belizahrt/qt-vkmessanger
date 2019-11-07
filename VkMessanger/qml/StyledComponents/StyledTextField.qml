import QtQuick 2.0
import QtQuick.Controls 2.12
import ColorScheme 1.0

TextField {
    id: controlTextField

    property alias fond: controlBackground

    color: ColorScheme.text
    selectByMouse: true

    background: Rectangle {
        id: controlBackground

        height: controlTextField.height
        width: controlTextField.width
        color: "transparent"
        border.width: 1
        border.color: controlTextField.activeFocus ? ColorScheme.focused : ColorScheme.countour
        radius: 10
    }
}
