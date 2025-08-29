import Quickshell
import QtQuick
import "shells"
import Quickshell.Hyprland

ShellRoot {
    Bar {
        id: bar
        HyprlandFocusGrab {
            id: grab
            windows: [bar]
        }
    }
}
