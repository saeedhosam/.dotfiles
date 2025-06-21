import QtQuick
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
}
