import QtQuick
import Quickshell.Hyprland

Text {
    color: "white"
    text: Hyprland.focusedMonitor.activeWorkspace.id
}
