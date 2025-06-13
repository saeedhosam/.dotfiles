import Quickshell.Io
import QtQuick

Text {
    id: clockText

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

    text: time
    color: "white"
}
