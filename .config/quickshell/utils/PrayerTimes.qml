import QtQuick
import "../singletons"
import "../scripts/prayer.js" as Prayer
import "../scripts/epoch.js" as Epoch
import QtQuick.Layouts

Rectangle {
    id: root
    width: 200
    height: 20
    color: Qt.lighter(WalColors.background, 3.0)
    border.color: WalColors.color2
    border.width: 1

    property int nextPrayerTimestamp: 0
    property int diffInTimestamp: (root.nextPrayerTimestamp - Time.time)

    RowLayout {
        anchors.fill: parent

        Text {
            id: nextPrayer
            text: "Loading..."
            font.family: "JetBrains Mono NF"
            color: Qt.lighter(WalColors.foreground, 1.25)
            Layout.leftMargin: 5
            Layout.alignment: Qt.AlignCenter
        }

        Text {
            id: countdown
            signal counterChanged
            text: Epoch.formatTimeOnly(root.diffInTimestamp)
            font.family: "JetBrains Mono NF"
            color: Qt.lighter(WalColors.foreground, 1.25)
            Layout.rightMargin: 5
            Layout.alignment: Qt.AlignCenter

            onTextChanged: {
                if (root.diffInTimestamp === 0) {
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
}
