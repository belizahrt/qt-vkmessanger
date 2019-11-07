import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "StyledComponents"

import QtGraphicalEffects 1.0
import ColorScheme 1.0

DefaultPage {
    StyledButton {
        anchors.centerIn: parent
        text: qsTr('pop()')
        width: 100

        onClicked: mainStackView.pop(directLoginPage)
    }

    RowLayout {
        x: 100
        y: 100

        Image {
            source: 'qrc:/imgs/refreshing.svg'
            sourceSize.width: 40
            sourceSize.height: 40
            smooth: true
            antialiasing: true
            rotation: 0

            SequentialAnimation on rotation {
                loops: Animation.Infinite
                PropertyAnimation { to: 360; duration: 800 }
            }

            layer {
                enabled: true
                effect: ColorOverlay {
                    color: ColorScheme.text
                }
            }
        }

        Image {
            source: 'qrc:/imgs/mute.svg'
            sourceSize.width: 12
            sourceSize.height: 12
            smooth: true
            antialiasing: true
            rotation: 0

            layer {
                enabled: true
                effect: ColorOverlay {
                    color: ColorScheme.text
                }
            }
        }

        Image {
            source: 'qrc:/imgs/online.svg'
            sourceSize.width: 12
            sourceSize.height: 12
            smooth: true
            antialiasing: true
            rotation: 0

            layer {
                enabled: true
                effect: ColorOverlay {
                    color: "#00aa50"
                }
            }
        }

        Image {
            source: 'qrc:/imgs/mobile.svg'
            sourceSize.width: 12
            sourceSize.height: 12
            smooth: true
            antialiasing: true
            rotation: 0

            layer {
                enabled: true
                effect: ColorOverlay {
                    color: "#00aa50"
                }
            }
        }
    }
}
