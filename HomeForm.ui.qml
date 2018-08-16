import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page {
    width: Layout.fillWidth
    height: Layout.fillHeight

    title: qsTr("Home")

    GridLayout {
        id: mainGridID
        width: parent.width - 30
        height: parent.height - 20
        anchors.centerIn: parent
        columns: 4
        rows: 7
        columnSpacing: 5
        flow: GridLayout.LeftToRight
        Rectangle {
            id: titleRectID
            // width: 450
            Layout.fillWidth: true
            Layout.preferredWidth: 450
            Layout.columnSpan: 3
            height: 120
            Layout.alignment: Qt.AlignTop
            Layout.row: 1
            Layout.column: 1
            clip: true
            border.color: "#BBB"
            border.width: 1
            Image {
                id: mainLogoID
                source: "qrc:/F:/Freelancer/Deepak/DentistApp/MainLogo.png"
                width: 243
                height: 75
            }
            Text {
                id: mainTitleID
                x: 20
                text: qsTr("Splint Design")
                font {
                    family: "Verdana"
                    italic: false
                    bold: false
                    pointSize: 18
                }
                anchors.top: mainLogoID.bottom
            }
        }

        Rectangle {
            id: masterDataRectID
            Layout.minimumWidth: 150
            Layout.maximumWidth: 250
            Layout.fillWidth: true
            height: 120
            Layout.alignment: Qt.AlignTop
            Layout.row: 1
            Layout.column: 4
            border.color: "#BBB"
            border.width: 1
            Rectangle {
                id: titleRectMainID
                border.color: "#000000"
                border.width: 1
                width: parent.width
                height: 75
                clip: false
                anchors.top: parent.top
                anchors.topMargin: 10

                Text {
                    id: masterDataID
                    x: 8
                    y: 3
                    text: qsTr("Master data\nfrom config file")
                    font.family: "Verdana"
                }
            }

            Rectangle {
                id: titleRectSecondID
                //y: 90
                border.color: "#000000"
                border.width: 1
                width: parent.width
                height: masterDataRect2ID.implicitHeight + 5
                anchors.top: titleRectMainID.bottom
                anchors.topMargin: 10

                Text {
                    id: masterDataRect2ID
                    x: 8
                    y: 3
                    text: qsTr("Order No")
                    font.family: "Verdana"
                }
            }
        }

        Rectangle {
            id: secondRowRectID
            height: 30
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 2
            clip: true
            border {
                color: "#BBB"
                width: 1
            }
            Rectangle {
                id: noticeID
                //                border.color: "#000000"
                //                border.width: 1
                width: parent.width - 2
                height: 30
                anchors.centerIn: parent.Center
                clip: true
                Text {
                    id: noticetextID
                    anchors.centerIn: parent
                    font {
                        family: "Verdana"
                        italic: false
                        bold: false
                        pointSize: noticeID.height / 3
                    }
                    text: qsTr("Please use the design guidlines of Flemming Dental Tec when filling in the parameters.")
                }
            }
        }
        Rectangle {
            id: thirdRowRectID
            height: 50
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 3
            border {
                color: "#BBB"
                width: 1
            }

            /*
                Custom CheckBox
            */
            CustomCheckBox {
            }
        }
        Rectangle {
            id: fourthRowRectID
            height: 30
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 4
            border {
                color: "#BBB"
                width: 1
            }
        }
        Rectangle {
            id: fifthRowRectID
            height: 30
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 5
            border {
                color: "#BBB"
                width: 1
            }
        }
        Rectangle {
            id: sixthRowRectID
            height: 300
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 6
            border {
                color: "#BBB"
                width: 1
            }
        }
        Rectangle {
            id: seventhRowRectID
            height: 30
            Layout.columnSpan: 4
            Layout.column: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignTop
            Layout.row: 7
            border {
                color: "#BBB"
                width: 1
            }
        }
    }
}
