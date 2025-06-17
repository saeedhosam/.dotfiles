import Quickshell.Services.UPower
import QtQuick
import "../singletons"

Rectangle {
    width: 35
    height: 20
    color: Qt.lighter(WalColors.background, 3.0)
    border.color: WalColors.color2
    border.width: 1

    Text {
        color: Qt.lighter(WalColors.foreground, 1.25)
        font.family: "JetBrains Mono NF"
        anchors.centerIn: parent
        text: qsTr("%1%").arg(Math.round(UPower.displayDevice.percentage * 100))
    }
}
