import QtQuick
import Quickshell
import "../scripts/prayer.js" as Prayer
import "../scripts/epoch.js" as Epoch
import QtQuick.Layouts

Rectangle {
    id: root
    width: 180
    height: 20
    color: "#1e1e2e"
    border.color: "#89b4fa"
    border.width: 1
    property int nextPrayerTimestamp: 0

    RowLayout {
        anchors.fill: parent

        Text {
            id: nextPrayer
            text: "Loading..."
            font.family: "JetBrains Mono NF"
            color: "white"
            Layout.leftMargin: 5
            Layout.alignment: Qt.AlignCenter
        }

        Text {
            id: countdown
            text: Epoch.formatTimeOnly(root.nextPrayerTimestamp - Time.time)
            font.family: "JetBrains Mono NF"
            color: "white"
            Layout.rightMargin: 5
            Layout.alignment: Qt.AlignCenter
        }
    }

    HoverHandler {
        id: mouse
    }

    LazyLoader {
        id: helloPopupLoader
        active: mouse.hovered
        // active: true

        PanelWindow {
            id: helloPopup

            anchors.top: root.bottom

            width: 200
            height: 200
            color: "#333333"

            Rectangle {
                anchors.fill: parent
                color: "#202020"
                border.color: "#89b4fa"
                border.width: 1

                ColumnLayout {
                    Layout.margins: 5
                    Text {
                        text: "Fajr"
                        color: "white"
                        font.pixelSize: 14
                    }
                    Text {
                        text: "Dhuhr"
                        color: "white"
                        font.pixelSize: 14
                    }
                    Text {
                        text: "Asr"
                        color: "white"
                        font.pixelSize: 14
                    }
                    Text {
                        text: "Maghrib"
                        color: "white"
                        font.pixelSize: 14
                    }
                    Text {
                        text: "Isha'"
                        color: "white"
                        font.pixelSize: 14
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        Prayer.fetchNextPrayer(function (result) {
            nextPrayer.text = result.lhs;
            nextPrayerTimestamp = result.timestamp;
        });
    }
}
