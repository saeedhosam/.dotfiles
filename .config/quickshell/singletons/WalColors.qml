pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root
    property string background
    property string foreground
    property string cursor
    property string color1
    property string color2
    property string color3
    property string color4
    property string color5
    property string color6
    property string color7
    property string color8
    property string color9
    property string color10
    property string color11
    property string color12
    property string color13
    property string color14
    property string color15

    Process {
        id: changeWal
        command: ["sh", "-c", 'swww img "$(find /home/saeed/wallpapers/content -type f | shuf -n 1)"']
        stdout: StdioCollector {
            onStreamFinished: console.log("Wallpaper changed via SWWW")
        }
    }

    Process {
        id: setScheme
        command: ["sh", "-c", "hellwal --skip-term-colors -i $(swww query | grep -oP '(?<=image: ).*') -j"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                root.background = JSON.parse(data).special.background;
                root.foreground = JSON.parse(data).special.foreground;
                root.cursor = JSON.parse(data).special.cursor;
                root.color1 = JSON.parse(data).colors.color1;
                root.color2 = JSON.parse(data).colors.color2;
                root.color3 = JSON.parse(data).colors.color3;
                root.color4 = JSON.parse(data).colors.color4;
                root.color5 = JSON.parse(data).colors.color5;
                root.color6 = JSON.parse(data).colors.color6;
                root.color7 = JSON.parse(data).colors.color7;
                root.color8 = JSON.parse(data).colors.color8;
                root.color9 = JSON.parse(data).colors.color9;
                root.color10 = JSON.parse(data).colors.color10;
                root.color11 = JSON.parse(data).colors.color11;
                root.color12 = JSON.parse(data).colors.color12;
                root.color13 = JSON.parse(data).colors.color13;
                root.color14 = JSON.parse(data).colors.color14;
                root.color15 = JSON.parse(data).colors.color15;
                console.log("Colorscheme set via Hellwal");
            }
        }
    }

    function changeWallpaper() {
        changeWal.running = true;
    }
    function generateScheme() {
        setScheme.running = true;
    }

    Component.onCompleted: {
        setScheme.running = true;
    }
}
