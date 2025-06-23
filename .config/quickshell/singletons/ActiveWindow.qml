pragma Singleton
import Quickshell.Io
import Quickshell.Hyprland
import Quickshell
import QtQuick

Singleton {
    id: root

    property string activeWindow
    property string prettyActiveWindow
    property string activeWindowIcon
    property var workspaceWindows: ({})

    readonly property var iconMap: ({
            // Browsers
            "Google-chrome": "",
            "google-chrome": "",
            "firefox": "󰈹",

            // Terminals
            "com.mitchellh.ghostty": "",

            // Other
            "undefined": "-"
        })

    readonly property var titleMap: ({
            // Browsers
            "Google-chrome": "Google Chrome",
            "google-chrome": "Google Chrome",
            "firefox": "Firefox",

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

    function titleToIcon(className: string): string {
        return iconMap[className] || className;
    }

    function reload() {
        Hyprland.refreshWorkspaces();
        Hyprland.refreshMonitors();
        getWindowTitle.running = true;
        getAllWindows.running = true;
    }

    Connections {
        target: Hyprland

        function onRawEvent(event: HyprlandEvent): void {
            if (!event.name.endsWith("v2"))
                root.reload();
        }
    }

    Component.onCompleted: ActiveWindow.reload()

    Process {
        id: getWindowTitle
        command: ["hyprctl", "-j", "activewindow"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                const windowTitle = JSON.parse(data).class;
                root.activeWindow = windowTitle
                root.prettyActiveWindow = root.prettyTitle(windowTitle);
                root.activeWindowIcon = root.titleToIcon(windowTitle);
                console.log("activeWindow: " + root.activeWindow)
            }
        }
    }
    Process {
        id: getAllWindows
        command: ["hyprctl", "-j", "clients"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                const clients = JSON.parse(data);

                const workspaceData = {}; // key = workspace.id, value = { count, classes, icons }

                clients.forEach(item => {
                    const id = item.workspace.id;
                    const className = item.class;

                    if (!workspaceData[id]) {
                        workspaceData[id] = {
                            count: 0,
                            classes: [],
                            icons: []
                        };
                    }

                    workspaceData[id].count += 1;
                    workspaceData[id].classes.push(className);

                    const icon = root.iconMap[className] || "";
                    workspaceData[id].icons.push(icon);
                });

                root.workspaceWindows = workspaceData;
                console.log("classes[0]: " + root.workspaceWindows[10].classes[0])
            }
        }
    }
}
