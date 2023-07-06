import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("CUAnalyzer example GUI")

    Rectangle {
        id: "topTitleBar"
        width: parent.width
        anchors {
            top: parent.top
            bottom: bottomBar.top
        }
        color: "#252534"     

        Rectangle {
            id: "topBottomSeparator"
            width: parent.width
            height: 2
            color: "red"
        }


    }

    Rectangle {
        id: "bottomBar"
        width: parent.width
        height: parent.height / 10
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        color: "white"     
    }

}