import QtQuick
import Quickshell.Io
import Quickshell.Hyprland

Rectangle {
    id: root
    width: 200
    height: 20
    color: "#1e1e2e"
    border.color: "#89b4fa"
    border.width: 1

    property string activeWindow

    function reload() {
        Hyprland.refreshWorkspaces();
        Hyprland.refreshMonitors();
        getWindowTitle.running = true;
    }

    Component.onCompleted: reload()

    Connections {
        target: Hyprland

        function onRawEvent(event: HyprlandEvent): void {
            if (!event.name.endsWith("v2"))
                root.reload();
        }
    }

    Text {
        color: "white"
        font.family: "JetBrains Mono NF"
        anchors.centerIn: parent
        text: root.activeWindow
    }

    readonly property var titleMap: ({
            // Browsers
            "Google-chrome": "Google Chrome",
            "google-chrome": "Google Chrome",

            // Terminals
            "com.mitchellh.ghostty": "Ghostty",

            // Other
            "undefined": "Desktop",
            "discord": "Discord",
            "quickshell": "Quickshell"
        })

    function prettyTitle(className: string): string {
        return titleMap[className] || className;
    }

    Process {
        id: getWindowTitle
        command: ["hyprctl", "-j", "activewindow"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                const windowTitle = JSON.parse(data).class;
                root.activeWindow = root.prettyTitle(windowTitle);
            }
        }
    }
}
