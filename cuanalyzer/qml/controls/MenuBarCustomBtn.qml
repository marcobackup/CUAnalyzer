import QtQuick 2.0
import QtQuick.Controls 2.5

Button {

    required text

    id: customBtn
    width: 100
    height: 52
    hoverEnabled: true
    flat: true

    background: Rectangle {
        id: btnRectangle
        color: "white"
    }
    contentItem: Column {
        id: column
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        Image {
            id: menuBarCustomBtnImage
            fillMode: Image.PreserveAspectFit
            anchors.topMargin: 3
            anchors.horizontalCenter: column.horizontalCenter
            anchors.top: column.top
            source: "../../assets/images/icons/settings.png"
            width: 28
            height: 28
        }

        Text {
            text: customBtn.text
            anchors.top: menuBarCustomBtnImage.bottom
            anchors.bottom: column.bottom
            anchors.bottomMargin: 3
            anchors.topMargin: 0
            anchors.horizontalCenter: column.horizontalCenter
        }
    }

}
