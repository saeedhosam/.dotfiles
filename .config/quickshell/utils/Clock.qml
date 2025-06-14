import Quickshell.Io
import QtQuick

Rectangle {
    width: 170
    height: 20
    color: "#1e1e2e"
    border.color: "#89b4fa"
    border.width: 1

    Text {
        id: clockText
        anchors.centerIn: parent
        font.family: "JetBrains Mono NF"
        text: time
        color: "white"

        property string time: ""

        Process {
            id: dateProc
            command: ["date", "+%a, %b %d · %H:%M:%S"]
            running: true
            stdout: SplitParser {
                onRead: data => clockText.time = data
            }
        }

        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: dateProc.running = true
        }
    }
}
