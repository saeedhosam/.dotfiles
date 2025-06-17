import QtQuick
import Quickshell.Hyprland
import "../singletons"

Rectangle {
    width: 25
    height: 20
    color: Qt.lighter(WalColors.background, 2.0)
    border.color: WalColors.color2
    border.width: 1
    Text {
        color: Qt.lighter(WalColors.foreground, 1.25)
        font.family: "JetBrains Mono NF"
        anchors.centerIn: parent
        text: Hyprland.focusedMonitor.activeWorkspace.id
    }
}
