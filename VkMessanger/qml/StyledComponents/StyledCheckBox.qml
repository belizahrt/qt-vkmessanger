import QtQuick 2.12
import QtQuick.Controls 2.12
import ColorScheme 1.0

CheckBox {
    id: controlCheckBox
    text: qsTr("CheckBox")
    checked: false

    indicator: Rectangle {
        implicitWidth: 20
        implicitHeight: 20
        x: controlCheckBox.leftPadding
        y: parent.height / 2 - height / 2
        radius: 3
        border.color: controlCheckBox.down ? ColorScheme.focused : ColorScheme.countour
        color: "transparent"

        Rectangle {
            width: 8
            height: 8
            x: 6
            y: 6
            radius: 2
            color: controlCheckBox.down ? ColorScheme.focused : ColorScheme.countour
            visible: controlCheckBox.checked
        }
    }

    contentItem: Text {
        text: controlCheckBox.text
        font: controlCheckBox.font
        opacity: enabled ? 1.0 : 0.3
        color: ColorScheme.text
        verticalAlignment: Text.AlignVCenter
        leftPadding: controlCheckBox.indicator.width + controlCheckBox.spacing
    }
}
