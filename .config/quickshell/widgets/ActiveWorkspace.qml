import QtQuick
import Quickshell.Hyprland

StyledRect {
    width: 25
    height: 20

    StyledText {
        anchors.centerIn: parent
        text: Hyprland.focusedMonitor.activeWorkspace.id
    }
}
