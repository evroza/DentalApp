import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle {
    id: backButtonID
    height: parent.height * 0.7
    width: 120
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    color: "#e6e6e6"
    radius: 5
    border {
        color: "#000"
        width: 1
    }

    Label {
        id: backLabelID
        anchors.centerIn: parent
        text: "Back"
        font.family: "Calibri"
    }
    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true
        onHoveredChanged: {
            print("Mouse detected, Back Button")
            if(containsMouse){
                backButtonID.color = "#bebebe"
                backLabelID.color = "#94438f"
            } else {
                backButtonID.color = "#e6e6e6"
                backLabelID.color = "#000"
            }

        }
        onClicked: {
            print("Order Cancelled!")
        }
    }
}
