import QtQuick
import QtQuick.Layouts
import "../singletons"

Rectangle {
    id: root
    width: 50
    height: 20
    color: Qt.lighter(WalColors.background, 4.0)
    border.color: WalColors.color5
    border.width: 1

    RowLayout {
        anchors.fill: parent
        Text {
            text: ""
            color: Qt.lighter(WalColors.foreground, 1.25)
            font.family: "JetBrains Mono NF"
            Layout.leftMargin: 5
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    WalColors.changeWallpaper();
                }
            }
        }

        Text {
            text: ""
            color: Qt.lighter(WalColors.foreground, 1.25)
            font.family: "JetBrains Mono NF"
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    WalColors.generateScheme();
                }
            }
        }
    }
}
