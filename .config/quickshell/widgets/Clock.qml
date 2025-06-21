import QtQuick
import "../singletons"
import "../scripts/epoch.js" as Epoch

StyledRect {
    width: 170
    height: 20

    StyledText {
        id: clockText
        anchors.centerIn: parent
        text: Epoch.formatDuration(Time.time)
    }
}
