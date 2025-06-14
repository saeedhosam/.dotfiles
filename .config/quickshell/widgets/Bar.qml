import Quickshell
import QtQuick
import "../utils"

Scope {

    Variants {
        model: Quickshell.screens

        PanelWindow {
            property var modelData
            screen: modelData
            color: "#003049"
            implicitHeight: 30

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

            Row {
                id: rightRow
                spacing: 12
                anchors {
                    right: parent.right
                    rightMargin: 10
                    verticalCenter: parent.verticalCenter
                }

                Battery {}
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
