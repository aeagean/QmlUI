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

Tumbler {
    id: root

    property color currentItemColor: "#3498DB"

    visibleItemCount: 5

    delegate: Text {
        text: modelData
        color: root.currentItemColor

        font.family: "Arial"
        font.weight: Font.Thin
        font.pixelSize: 50

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        opacity: 1.0 - Math.abs(Tumbler.displacement) / root.visibleItemCount
        scale: opacity
    }

    /*
    contentItem: PathView {
        id: pathView
        model: root.model
        delegate: root.delegate
        clip: true
        pathItemCount: root.visibleItemCount
        currentIndex: root.currentIndex
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        dragMargin: width / 2

        path: Path {
            startX: pathView.width / 2
            startY: 0
            PathLine { x: pathView.width/2; y: pathView.height }
        }
    }
    */

    background: Rectangle {
        width: root.width;
        height: root.height
        border.color: "#EBEDEF"

        layer.enabled: root.hovered
        layer.effect: DropShadow {
            transparentBorder: true
            color: root.currentItemColor
            samples: 5 /*20*/
        }
    }
}
