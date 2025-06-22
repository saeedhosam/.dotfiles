import QtQuick
import QtQuick.Layouts
import "../singletons"

StyledRect {
    id: root
    width: 45
    height: 20

    RowLayout {
        anchors.fill: parent

        StyledText {
            text: ""
            Layout.alignment: Qt.AlignLeft
            Layout.leftMargin: 5
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    Matugen.generateScheme();
                }
            }
        }

        StyledText {
            text: ""
            Layout.alignment: Qt.AlignRight
            Layout.rightMargin: 5
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    Matugen.delWallpaper();
                }
            }
        }
    }
}
