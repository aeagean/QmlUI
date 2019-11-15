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

TextField {
    id: root

    property color checkedColor: "#D5DBDB"
    placeholderText: qsTr("请输入内容")

    font.family: "Arial"
    font.pixelSize: 15
    font.weight: Font.Thin
    antialiasing: true

    background: Rectangle {
        implicitWidth: 213
        implicitHeight: 42
        radius: 8
        color: root.enabled ? "transparent" : "#F4F6F6"
        border.color: root.enabled ? root.checkedColor : "#D5DBDB"
        border.width: 2
        opacity: root.enabled ? 1 : 0.7
    }

    cursorDelegate: Rectangle {
        width: 1
        height: parent.height * 0.4
        color: root.checkedColor
        visible: root.focus

        Timer {
            interval: 600
            repeat: true
            running: root.focus
            onRunningChanged: parent.visible = running
            onTriggered: parent.visible = !parent.visible
        }
    }
}
