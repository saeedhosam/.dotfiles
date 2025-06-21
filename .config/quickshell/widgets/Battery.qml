import Quickshell.Services.UPower
import QtQuick
import "../singletons"

StyledRect {
    width: 35
    height: 20

    StyledText {
        anchors.centerIn: parent
        text: qsTr("%1%").arg(Math.round(UPower.displayDevice.percentage * 100))
    }
}
