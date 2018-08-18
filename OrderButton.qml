import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle {
    id: orderButtonID
    height: parent.height * 0.7
    width: 200
    anchors.left: parent.left
    color: "#92d36e"
    radius: 5
    anchors.bottom: parent.bottom
    border {
        color: "#000"
        width: 1
    }

    Label {
        id: orderLabelID
        anchors.centerIn: parent
        text: "Order"
    }
    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true
        onHoveredChanged: {
            print("Mouse detected")
            if(containsMouse){
                orderButtonID.color = "#7fae64"
                orderLabelID.color = "#FFF"
            } else {
                orderButtonID.color = "#92d36e"
                orderLabelID.color = "#000"
            }

        }
        onClicked: {
            print("Order placed!")
        }
    }
}
