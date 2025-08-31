import QtQuick
import Quickshell
import QtQuick.Layouts

StyledRect {
    id: root
    width: quote.implicitWidth + 20
    height: 20
    anchors.centerIn: parent

    StyledText {
        id: quote
        anchors.centerIn: parent
        text: "Focus."
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
            implicitWidth: 600
            implicitHeight: 60
            color: "transparent"

            StyledRect {
                anchors.fill: parent

                ColumnLayout {
                    anchors.centerIn: parent

                    StyledText {
                        text: "Seek knowledge, prepare, and train as hard as you can."
                    }
                    StyledText {
                        text: "Once your training is halted, seek more knowledge, and train more, and harder."
                    }
                }
            }
        }
    }
}
