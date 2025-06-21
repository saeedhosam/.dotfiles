import Quickshell
import QtQuick
import "../singletons"
import "../widgets"

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: root
            property var modelData

            screen: modelData
            implicitHeight: 30

            color: "transparent"

            anchors {
                top: true
                left: true
                right: true
            }

            margins {
                top: 5
                left: 5
                right: 5
            }

            StyledRect {
                width: 30
                height: 30
                anchors.fill: parent
                radius: 20
                color: Matugen.surface

                Row {
                    id: rightRow
                    spacing: 12
                    anchors {
                        right: parent.right
                        rightMargin: 10
                        verticalCenter: parent.verticalCenter
                    }
                    Wallpaper {}
                    Battery {}
                    PrayerTime {}
                    Clock {}
                }
                Row {
                    id: leftRow
                    spacing: 12
                    anchors {
                        left: parent.left
                        leftMargin: 10
                        verticalCenter: parent.verticalCenter
                    }
                    ActiveWorkspace {}
                    ActiveWindow {}
                }
            }
        }
    }
}
