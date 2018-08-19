import QtQuick 2.0
import QtQuick.Controls 2.2


Rectangle {
    property alias fieldID: fieldRadioLabelID
    width: fieldRadioLabelID.implicitWidth + 10 +yesRadioID.width + noRadioID.width
    height: (parent.height / 7 ) * 0.3 + fieldRadioLabelID.implicitHeight

    border {
        width: 1
        color: "#77f613"
    }



        Label {
            id: fieldRadioLabelID
            anchors.left: parent.left
            text: "Default text"
        }

        CustomCheckBox{
            id: yesRadioID
            anchors.left: fieldRadioLabelID.right
            anchors.leftMargin: 10
            checkBoxText.text: "Yes"

        }
        CustomCheckBox{
            id: noRadioID
            anchors.left: yesRadioID.right
            checkBoxText.text: "No"
        }




}

