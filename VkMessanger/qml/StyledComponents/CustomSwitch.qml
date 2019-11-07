import QtQuick 2.12
import QtQuick.Controls 2.12
import ColorScheme 1.0

Switch {
    id: control

    indicator: Rectangle {
        implicitWidth: 48
        implicitHeight: 26
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 13
        color: control.checked ? ColorScheme.focused : ColorScheme.darkbase
        border.color: ColorScheme.countour

        Rectangle {
            x: control.checked ? parent.width - width : 0
            width: 26
            height: 26
            radius: 13
            color: control.down ? ColorScheme.focused : ColorScheme.lightbase
            border.color: ColorScheme.countour
        }
    }

    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: ColorScheme.text
        verticalAlignment: Text.AlignVCenter
        leftPadding: control.indicator.width + control.spacing
    }
}
