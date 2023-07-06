import QtQuick 2.0
import "../../controls"

Item {

    Rectangle {

        id: menuBarConnectionPage
        width: parent.width
        height: parent.height
        color: "#252534"

        Rectangle {
            id: header
            width: parent.width
            height: parent.height / 4
            color: "#252534"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Image {
                id: logo
                y: 25
                width: 345
                height: 75
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                source: "../../../assets/images/logo.png"
                anchors.leftMargin: 60
                anchors.bottomMargin: 5
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                width: parent.width
                height: 1
                color: "white"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }

        Rectangle {
            id: menuBar
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0

            Row {
                id: row
                height: parent.height
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                spacing: 0
                layoutDirection: Qt.RightToLeft
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0

                MenuBarCustomBtn {
                    id: menuBarSettingsBtn
                    text: "IMPOSTAZIONI"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }

                MenuBarCustomBtn {
                    id: menuBarConnectBtn
                    text: "CONNETTI"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

            }
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3}D{i:2}D{i:6}D{i:5}
}
##^##*/
