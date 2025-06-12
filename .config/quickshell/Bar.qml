import Quickshell

Scope {
    Time {
        id: timeSource
    }

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

            ClockWidget {
                time: timeSource.time
                anchors {
                    right: parent.right
                    rightMargin: 10
                    verticalCenter: parent.verticalCenter
                }
            }
        }
    }
}
