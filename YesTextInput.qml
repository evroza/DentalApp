import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {
    id: yesTextInputID

    property alias placeholderText: textEdit.placeholderText
    property alias yesTextInputLabelID: yesTextInputLabelID
    property bool checkBoxChecked: false

    width: 400
    height: 30
//    border {
//        width: 1
//        color: "#000"
//    }

    Rectangle {
        id: yesTextInputLabelBoundID
        width: 125 //yesTextInputLabelID.implicitWidth + 5
        height: parent.height
        //width: 120 //splitExpansionLabelID.implicitWidth + 5
        anchors.left: parent.left
//        y: 6
        border {
            width: 1
            color: "#000"
        }
        Label {
            id: yesTextInputLabelID
            anchors.left: parent.left
            anchors.leftMargin: 5

            y: 6
            text: qsTr("Default text")
        }
    }

    // Custom Checkbox

    CustomCheckBox {
        id: checkBoxID
        checkBoxText.text: "Yes"
        anchors.left: yesTextInputLabelBoundID.right
        anchors.leftMargin: 24
        x: 10
        checked: checkBoxChecked
        // Overide the default MouseArea behaviour in CustomCheckBox
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                checkBoxChecked = !checkBoxChecked
                if(checkBoxChecked){
                    // checked - enable text area
                    textEdit.enabled = true
                    textEdit.color = "#000"
                } else{
                    // unchecked, disable text area
                    textEdit.enabled = false
                    textEdit.color = "#CCC"
                }

            }
        }
    }

    Rectangle {
        id: textInputBoundID
        anchors.left: checkBoxID.right
        anchors.leftMargin: 10
        width: 220
        height: 30
        border {
            width: 1
            color: "#CCC"
        }

        TextInput {
            property string placeholderText: "Default text placeholder"

            id: textEdit
            anchors.fill: parent
            padding: 10
//            validator: IntValidator {
//                bottom: 16
//                top: 26
//            }

            horizontalAlignment: TextInput.AlignHCenter
            enabled: checkBoxChecked

            onAccepted: {
                color: "green"
            }


            Text {
                text: textEdit.placeholderText
                anchors.centerIn: parent
                color: "#aaa"
                visible: !textEdit.text
            }
        }
    }
}
