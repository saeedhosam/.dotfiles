import QtQuick
import Quickshell.Hyprland

Rectangle {
    width: 25
    height: 20
    color: "#1e1e2e"
    border.color: "#89b4fa"
    border.width: 1
    Text {
        color: "white"
        font.family: "JetBrains Mono NF"
        anchors.centerIn: parent
        text: Hyprland.focusedMonitor.activeWorkspace.id
    }
}
