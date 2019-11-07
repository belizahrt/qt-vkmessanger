import QtQuick 2.0
import QtQuick.Controls 2.12
import ColorScheme 1.0

Label {
    text: qsTr("Label")
    elide: Text.ElideRight
    maximumLineCount: 1
    color: ColorScheme.text
    font.pixelSize: 11
}
