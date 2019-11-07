pragma Singleton
import QtQuick 2.0

QtObject {
    property Theme lightTheme: LightTheme { }
    property Theme darkTheme: DarkTheme { }
    property Theme current: darkTheme

    property color window:      current ? current.window : "transparent"
    property color highlighted: current ? current.highlighted : "transparent"
    property color darkbase:    current ? current.darkbase : "transparent"
    property color lightbase:   current ? current.lightbase : "transparent"
    property color hovered:     current ? current.hovered : "transparent"
    property color focused:     current ? current.focused : "transparent"
    property color countour:    current ? current.countour : "transparent"
    property color text:        current ? current.text : "transparent"

}
