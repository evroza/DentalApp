import QtQuick 2.0
import QtQuick.Controls 2.2

Item {

    Rectangle {
        property string checkBoxID: "splintLong"

        id: checkBoxID
        width: 18
        height: width
        border {
            color: "#DDD"
            width: 1
        }
        radius: width / 2
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                print("I see you!!")
            }
        }


    }
}
