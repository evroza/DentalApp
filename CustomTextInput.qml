import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {
    id: splitExpansionID

    property alias placeholderText: textEdit.placeholderText
    property alias splitExpansionLabelID: splitExpansionLabelID

    width: 400
    height: 30
//    border {
//        width: 1
//        color: "#000"
//    }

    Rectangle {
        id: splitExpansionLabelBoundID
        width: 120 //splitExpansionLabelID.implicitWidth + 5
        height: parent.height
        anchors.left: parent.left
        border {
            width: 1
            color: "#000"
        }
        Label {
            id: splitExpansionLabelID
            anchors.left: parent.left
            anchors.leftMargin: 5
            y: 6
            text: qsTr("Default text")

        }
    }
    Rectangle {
        anchors.left: splitExpansionLabelBoundID.right
        anchors.leftMargin: 30
        width: 220
        height: 30
        //radius: 5
        border {
            width: 1
            color: "#CCC"
        }

        TextInput {
            id: textEdit
            anchors.fill: parent
            padding: 10
//            validator: IntValidator {
//                bottom: 16
//                top: 26
//            }

            horizontalAlignment: TextInput.AlignHCenter

            property string placeholderText: "Default text placeholder"

            Text {
                text: textEdit.placeholderText
                anchors.centerIn: parent
                color: "#aaa"
                visible: !textEdit.text
            }
        }
    }
}
