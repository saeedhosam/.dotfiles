import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import "../singletons"

StyledRect {
    id: root
    width: 45
    height: 20

    Process {
        id: changeWal
        command: ["sh", "-c", 'swww img "$(find /home/saeed/wallpapers/content -type f | shuf -n 1)" --transition-type center']
    }

    RowLayout {
        anchors.fill: parent
        StyledText {
            text: ""
            Layout.alignment: Qt.AlignLeft
            Layout.leftMargin: 5
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    changeWal.running = true;
                }
            }
        }

        StyledText {
            text: ""
            Layout.alignment: Qt.AlignRight
            Layout.rightMargin: 5
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    Matugen.generateScheme();
                }
            }
        }
    }
}
