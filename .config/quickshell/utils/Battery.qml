import Quickshell.Services.UPower
import QtQuick

Text {
    color: "white"
    text: qsTr("%1%").arg(Math.round(UPower.displayDevice.percentage * 100))
    verticalAlignment: Text.AlignVCenter
}
