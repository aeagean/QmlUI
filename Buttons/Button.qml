import QtQuick 2.7
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

Button {
    id: root
    property color backgroundDefaultColor: "#4E5BF2"
    property color backgroundPressedColor: Qt.darker(backgroundDefaultColor, 1.2)
    property color contentItemTextColor: "white"

    text: "Button"
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
        radius: 3
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            color: root.down ? root.backgroundPressedColor : root.backgroundDefaultColor
            samples: 20
        }
    }
}
