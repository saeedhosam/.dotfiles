import QtQuick
import Quickshell

StyledRect {
    id: root
    width: icon.implicitWidth
    height: 20

    StyledText {
        id: icon
        text: "󰻞"
        leftPadding: 10
        rightPadding: 10
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: popupLoader.item.visible = !popupLoader.item.visible
        cursorShape: Qt.PointingHandCursor
    }

    LazyLoader {
        id: popupLoader
        loading: true

        PopupWindow {
            id: popupWindow
            anchor.item: root
            anchor.rect.y: 30
            anchor.rect.x: (root.width - popupWindow.implicitWidth) / 2
            implicitWidth: 400
            implicitHeight: 600
        }
    }
}
