import QtQuick 2.12
import QtQuick.Controls 2.12

RadioButton {
    id: root

    property color checkedColor: "#0ACF97"
    text: qsTr("RadioButton")

    indicator: Rectangle {
        x: root.leftPadding
        anchors.verticalCenter: parent.verticalCenter
        width: 26; height: width
        antialiasing: true
        radius: width/2
        border.color: root.checkedColor

        Rectangle {
            anchors.centerIn: parent
            width: parent.width*0.7; height: width
            antialiasing: true
            radius: width/2
            color: root.checkedColor
            visible: root.checked
        }
    }
}
