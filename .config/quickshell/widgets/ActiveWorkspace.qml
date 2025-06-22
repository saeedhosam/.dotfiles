import QtQuick
import Quickshell.Hyprland

StyledRect {
    width: 30
    height: 20

    StyledText {
        anchors.centerIn: parent
        text: Hyprland.focusedMonitor.activeWorkspace.id
    }
}
