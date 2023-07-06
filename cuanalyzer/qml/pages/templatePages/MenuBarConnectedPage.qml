import QtQuick 2.0
import "../../controls"

Item {

    Rectangle {

        id: menuBarConnectedPage
        width: parent.width
        height: parent.height
        color: "white"

        Rectangle {
            id: header
            width: parent.width
            height: parent.height / 6
            color: "#252534"

            Row {
                id: row
                width: 200
                height: parent.height
                anchors.left: parent.left
                anchors.leftMargin: 20

                Image {
                    id: carLogo
                    width: 50
                    height: 50
                    anchors.verticalCenter: parent.verticalCenter
                    source: "../../../assets/images/carLogos/fiat.png"
                    fillMode: Image.PreserveAspectFit
                }

                Column {
                    id: car
                    width: parent.width
                    height: parent.height
                    anchors.left: carLogo.right
                    anchors.leftMargin: 3

                    Text {
                        id: carModel
                        color: "#ffffff"
                        text: qsTr("PUNTO 4a")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: carLogo.right
                        font.pixelSize: 20
                        anchors.verticalCenterOffset: -5
                        anchors.leftMargin: 10
                    }
                    Text {
                        id: carYear
                        color: "#ffffff"
                        text: qsTr("2013")
                        anchors.left: carLogo.right
                        anchors.top: carModel.bottom
                        font.pixelSize: 12
                        anchors.topMargin: -5
                        anchors.leftMargin: 10
                    }
                }


            }

            Image {
                x: 0
                y: 0
                width: 233
                height: 54
                source: "../../../assets/images/logo-no-motto.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 10
                sourceSize.height: 110
                fillMode: Image.PreserveAspectFit
            }

        }

        Rectangle {
            id: menuBar
            height: 60
            color: "white"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Row {
                width: parent.width
                height: parent.height
                spacing: 10
                layoutDirection: Qt.RightToLeft

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
                    id: menuBarAdvancedMenuBtn
                    text: "AVANZATO"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }

                MenuBarCustomBtn {
                    id: menuBarMaintenanceBtn
                    text: "MANUTENZIONE"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }

                MenuBarCustomBtn {
                    id: menuBarErrorsBtn
                    text: "CODICI ERRORE"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }


                MenuBarCustomBtn {
                    id: menuBarParametersBtn
                    text: "PARAMETRI"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }


                MenuBarCustomBtn {
                    id: menuBarClusterBtn
                    text: "CRUSCOTTO"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }


                MenuBarCustomBtn {
                    id: menuBarDashboardBtn
                    text: "DASHBOARD"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                MenuBarBtnSeparator {
                    height: parent.height - 15
                    anchors.verticalCenter: parent.verticalCenter
                }


                MenuBarCustomBtn {
                    id: menuBarDisconnectBtn
                    text: "DISCONNETTI"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

            }

        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:950}D{i:9}
}
##^##*/
