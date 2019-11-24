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
import QtGraphicalEffects 1.0

Switch {
    id: root
    property color checkedColor: "#0ACF97"

    hoverEnabled: true
    indicator: Rectangle {
        width: 54
        height: 34
        radius: height / 2
        color: root.checked ? checkedColor : "white"
        border.width: 2
        border.color: root.checked ? checkedColor : "#E5E5E5"

        Rectangle {
            x: root.checked ? parent.width - width - 2 : 1
            width: root.checked ? parent.height - 4 : parent.height - 2
            height: width
            radius: width / 2
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            border.color: "#D5D5D5"

            Behavior on x {
                NumberAnimation { duration: 200 }
            }
        }

        layer.enabled: root.hovered
        layer.effect: DropShadow {
            id: dropShadow
            transparentBorder: true
            color: root.checked ? root.checkedColor : "#E5E5E5"
            samples: 10 /*20*/
        }
    }
}
