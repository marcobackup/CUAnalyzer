import QtQuick.Window 2.3
import QtQuick 2.0

import "controls"

Window {

    id: mainPage
    width: 790
    height: 550
    visible: true
    color: "#252534"
    title: qsTr("CUAnalyzer")

    MenuBarCustomBtn {
        id: menuBarSettingsBtn
        text: "IMPOSTAZIONI"
    }



}
