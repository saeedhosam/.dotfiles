import QtQuick
import Quickshell.Io
import "../singletons"

Rectangle {
    id: root
    width: 20
    height: 20
    color: Qt.lighter(WalColors.background, 2.0)
    border.color: WalColors.color2
    border.width: 1

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            changeWallpaper.running = true;
            createWal.running = true;
        }
    }

    Process {
        id: color2
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color2"]
        stdout: StdioCollector {
            onStreamFinished: root.color2 = this.text.trim()
        }
    }

    Process {
        id: changeWallpaper
        command: ["sh", "-c", 'swww img "$(find /home/saeed/wallpapers/content -type f | shuf -n 1)"']
        stdout: StdioCollector {
            onStreamFinished: console.log("Wallpaper Changed")
        }
    }

    Process {
        id: createWal
        command: ["sh", "-c", "wal -si $(swww query | grep -oP '(?<=image: ).*')"]
        stdout: StdioCollector {
            onStreamFinished: console.log("Pywal Colors Generated")
        }
    }

    Text {
        text: ""
        color: Qt.lighter(WalColors.foreground, 1.25)
        font.family: "JetBrains Mono NF"
        anchors.centerIn: parent
    }
}
