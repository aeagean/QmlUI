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

Button {
    id: root
    property color backgroundDefaultColor: "#4E5BF2"
    property color backgroundPressedColor: Qt.darker(backgroundDefaultColor, 1.2)
    property color contentItemTextColor: "white"

    text: "Button"
    hoverEnabled: true

    contentItem: Text {
        text: root.text
        color: root.contentItemTextColor
        font.pixelSize: 15
        font.family: "Arial"
        font.weight: Font.Thin
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 83
        implicitHeight: 37
        color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor

        Rectangle {
            anchors.fill: parent
            color: "#20000000"
            opacity: root.hovered
            Behavior on opacity {
                NumberAnimation { duration: 300 }
            }
        }

        radius: 3
        layer.enabled: true//root.hovered
        layer.effect: DropShadow {
            transparentBorder: true
            color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor
            samples: 20 /*20*/
        }
    }
}
