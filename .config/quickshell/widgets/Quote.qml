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
        text: "Have faith."
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
            implicitWidth: 150
            implicitHeight: 150
            color: "transparent"

            StyledRect {
                anchors.fill: parent

                ColumnLayout {
                    anchors.centerIn: parent

                    StyledText {
                        text: "Read Qur'an"
                    }
                    StyledText {
                        text: "Study"
                    }
                    StyledText {
                        text: "Exercise"
                    }
                }
            }
        }
    }
}
