import Quickshell.Services.UPower
import QtQuick

StyledRect {
    width: bat.implicitWidth + 15
    height: 20

    StyledText {
        id: bat
        anchors.centerIn: parent
        text: qsTr("%1%").arg(Math.round(UPower.displayDevice.percentage * 100))
    }
}
