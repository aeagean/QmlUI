/**********************************************************
 * Author: Qt君
 * 微信公众号: Qt君(首发)
 * Website: qtbig.com(后续更新)
 * Email:  2088201923@qq.com
 * QQ交流群: 732271126
 * LISCENSE: MIT
 ************************************************************/
import QtQuick 2.0
import QtQuick.Controls 2.0

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
        border.width: 2
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
