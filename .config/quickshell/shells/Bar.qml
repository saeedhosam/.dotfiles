import Quickshell
import QtQuick.Layouts
import QtQuick
import "../singletons"
import "../widgets"

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: root
            screen: modelData
            implicitHeight: 30
            color: "transparent"

            property var modelData

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
                    spacing: 10
                    anchors {
                        right: parent.right
                        rightMargin: 20
                        verticalCenter: parent.verticalCenter
                    }

                    Wallpaper {}
                    Battery {}
                    PrayerTime {}
                    Clock {}
                }

                Quote {}

                RowLayout {
                    id: leftRow
                    spacing: 10
                    anchors {
                        left: parent.left
                        leftMargin: 20
                        verticalCenter: parent.verticalCenter
                    }

                    ActiveWorkspace {}
                    ActiveWindow {}
                }
            }
        }
    }
}
