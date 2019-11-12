import QtQuick 2.0
 import QtQuick.Controls 2.0

CheckBox {
    id: root

    property color checkedColor: "#0ACF97"

    text: qsTr("CheckBox")

    indicator: Rectangle {
        x: root.leftPadding
        anchors.verticalCenter: parent.verticalCenter
        width: 26; height: width
        antialiasing: true
        border.width: 2
        border.color: root.checkedColor

        Rectangle {
            anchors.centerIn: parent
            width: parent.width*0.7; height: width
            antialiasing: true
            color: root.checkedColor
            visible: root.checked
        }
    }
}
