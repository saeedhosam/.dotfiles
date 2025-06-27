import QtQuick
import Quickshell.Hyprland
import "../singletons"

Row {
    id: root
    spacing: 5

    property int activeWorkspace: Hyprland.focusedMonitor.activeWorkspace.id

    Repeater {
        id: repeater
        model: 10

        StyledRect {
            id: container
            width: workspaceId.implicitWidth + 10
            height: 20
            color: "transparent"

            StyledText {
                id: workspaceId
                anchors.centerIn: parent
                text: (ActiveWindow.workspaceWindows[index + 1]?.icons || []).join("  ") || index + 1
                color: Matugen.primary
                opacity: root.activeWorkspace === index + 1 ? 1.0 : 0.4
            }

            StyledRect {
                id: workspaceButton
                width: container.width
                height: 2
                anchors.bottom: parent.bottom
                opacity: index + 1 === root.activeWorkspace ? 1.0 : 0.4
            }
        }
    }
}
