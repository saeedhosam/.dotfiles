import QtQuick
import "../singletons"

StyledRect {
    id: root
    width: 130
    height: 20

    StyledText {
        anchors.centerIn: parent
        text: ActiveWindow.prettyActiveWindow
    }
}
