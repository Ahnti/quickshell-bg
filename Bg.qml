import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Effects

Scope {
    Variants {
        model: Quickshell.screens
        PanelWindow {
            property var modelData
            screen: modelData
            aboveWindows: false
            color: "transparent"
            anchors {
                top: true
                left: true
                bottom: true
                right: true
            }

            Image {
                id: bg
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
                source: "bg.png"
            }

            Text {
                id: timetxt

                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -270
                width: 400
                horizontalAlignment: Text.AlignHCenter
                font.family: "SpaceMono Nerd Font Mono"
                font.pointSize: 100
                font.weight: Font.Bold
                color: "white"
                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: {
                        timetxt.text = Qt.formatTime(new Date(), "hh mm")
                        //timetxt.text = "11 53"
                    }
                }

                Component.onCompleted: {
                    timetxt.text = Qt.formatTime(new Date(), "hh mm")
                }
            }

            Image {
                id: fg
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
                source: "fg.png"
            }
        }
    }
}
