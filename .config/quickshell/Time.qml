import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: root
    property string time

    Process {
        id: dateProc
        command: ["date", "+%a, %b %d · %H:%M:%S"]
        running: true

        stdout: SplitParser {
            onRead: data => root.time = data
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }
}
