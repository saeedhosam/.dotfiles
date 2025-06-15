import QtQuick
import "../scripts/epoch.js" as Epoch

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
        text: Epoch.formatDuration(Time.time)
        color: "white"
    }
}
