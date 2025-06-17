import QtQuick
import "../singletons"
import "../scripts/epoch.js" as Epoch

Rectangle {
    width: 170
    height: 20
    color: Qt.lighter(WalColors.background, 2.0)
    border.color: WalColors.color2
    border.width: 1

    Text {
        id: clockText
        color: Qt.lighter(WalColors.foreground, 1.25)
        anchors.centerIn: parent
        font.family: "JetBrains Mono NF"
        text: Epoch.formatDuration(Time.time)
    }
}
