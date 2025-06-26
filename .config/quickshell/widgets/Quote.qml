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
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
        // onClicked: popupLoader.active = !popupLoader.active
        onEntered: popupLoader.active = true
        onExited: popupLoader.active = false
    }

    LazyLoader {
        id: popupLoader

        PopupWindow {
            id: popupWindow
            anchor.window: root.QsWindow.window
            implicitWidth: 150
            implicitHeight: 150
            visible: true
            color: "transparent"
            anchor.rect.x: root.x
            anchor.rect.y: 40

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
