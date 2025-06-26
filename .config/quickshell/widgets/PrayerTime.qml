pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import "../singletons"
import "../scripts/prayer.js" as Prayer
import "../scripts/epoch.js" as Epoch
import QtQuick.Layouts

StyledRect {
    id: root
    width: 200
    height: 20

    property int nextPrayerTimestamp: 0
    property int diffInTimestamp: (root.nextPrayerTimestamp - Time.time)

    RowLayout {
        anchors.fill: parent

        StyledText {
            id: nextPrayer
            text: "Loading..."
            Layout.leftMargin: 5
            Layout.alignment: Qt.AlignCenter
        }

        StyledText {
            id: countdown
            signal counterChanged
            text: Epoch.formatTimeOnly(root.diffInTimestamp)
            Layout.rightMargin: 5
            Layout.alignment: Qt.AlignCenter

            onTextChanged: {
                if (root.diffInTimestamp < 0) {
                    Prayer.fetchNextPrayer(function (result) {
                        nextPrayer.text = result.lhs;
                        nextPrayerTimestamp = result.timestamp;
                    });
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

    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: popupLoader.item.visible = !popupLoader.item.visible
    }

    LazyLoader {
        id: popupLoader
        loading: true

        PopupWindow {
            id: popupWindow
            anchor.item: root
            anchor.rect.y: 30
            implicitWidth: 200
            implicitHeight: 200
            color: "transparent"

            StyledRect {
                anchors.fill: parent

                ColumnLayout {
                    anchors.centerIn: parent
                    RowLayout {
                        StyledText {
                            text: "Marghrib"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                    RowLayout {
                        StyledText {
                            text: "Isha'"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                    RowLayout {
                        StyledText {
                            text: "Fajr"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                    RowLayout {
                        StyledText {
                            text: "Shuruq"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                    RowLayout {
                        StyledText {
                            text: "Dhuhr"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                    RowLayout {
                        StyledText {
                            text: "Asr"
                            Layout.leftMargin: 10
                            Layout.fillWidth: true
                        }

                        StyledText {
                            signal counterChanged
                            text: "00:00:00"
                            Layout.rightMargin: 10
                        }
                    }
                }
            }
        }
    }
}
