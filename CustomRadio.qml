import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle {

    property alias fieldID: fieldRadioLabelID
    // 0 - no, 1 - yes, 2 - (default) untouched/pristine (must touch to submit form)
    property int acceptedFlag: 2

    width: fieldRadioLabelBoundID.width + 10 +yesRadioID.width + noRadioID.width
    height: fieldRadioLabelID.implicitHeight + 6 //(parent.height / 7 ) * 0.3 + fieldRadioLabelID.implicitHeight



//    border {
//        width: 1
//        color: "#77f613"
//    }

    Rectangle {
        id: fieldRadioLabelBoundID
        width: 125 //yesTextInputLabelID.implicitWidth + 5
        height: parent.height
        //width: 120 //splitExpansionLabelID.implicitWidth + 5
        anchors.left: parent.left
        border {
            width: 1
            color: "#000"
        }
        Label {
            id: fieldRadioLabelID
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "Default text"
        }
    }

    CustomCheckBox{
        id: yesRadioID
        checked: false
        anchors.left: fieldRadioLabelBoundID.right
        anchors.leftMargin: 15
        checkBoxText.text: "Yes"
        labelLeftMarginAlias: 4
        MouseArea {
//            anchors.fill: parent
//            onClicked: shiftRadio(yesRadioID)

            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: shiftRadio("yesRadio")
        }
    }
    CustomCheckBox{
        id: noRadioID
        checked: false
        anchors.left: yesRadioID.right
        anchors.leftMargin: 6
        checkBoxText.text: "No"
        labelLeftMarginAlias: 4
        MouseArea {
//            onClicked: shiftRadio(noRadioID)

            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: shiftRadio("noRadio")
        }
    }

    function shiftRadio(radioID){
        parent.focus = true
        if(radioID === "yesRadio"){
            print("Yes Radio")
            acceptedFlag = 1
            noRadioID.checked = false
            yesRadioID.checked = true
        } else if(radioID === "noRadio"){
            print("No Radio")
            acceptedFlag = 0
            noRadioID.checked = true
            yesRadioID.checked = false
        }
    }
}
