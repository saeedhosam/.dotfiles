import QtQuick
import Quickshell.Io
import Quickshell.Hyprland
import "../singletons"

Rectangle {
    id: root
    width: 200
    height: 20
    color: Qt.lighter(WalColors.background, 3.0)
    border.color: WalColors.color2
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
        color: Qt.lighter(WalColors.foreground, 1.25)
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

            // Communication
            "discord": "Discord",

            // Other
            "undefined": "Desktop",
            "quickshell": "Quickshell",
            "org.pwmt.zathura": "Zathura"
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
