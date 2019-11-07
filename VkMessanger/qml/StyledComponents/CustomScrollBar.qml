import QtQuick 2.12
import QtQuick.Controls 2.12
import ColorScheme 1.0

ScrollBar {
    id: control

    active: true
    orientation: Qt.Vertical
    policy: ScrollBar.AsNeeded

    contentItem: Rectangle {
        implicitWidth: 6
        radius: 3
        color: control.pressed ? ColorScheme.focused : ColorScheme.lightbase
        opacity: control.hovered || control.pressed ? 1 : 0
    }
}
