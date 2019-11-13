import QtQuick 2.0
import QtQuick.Controls 2.0

Slider {
    id: root

    property color checkedColor: "#3498DB"

    value: 0.5

    background: Rectangle {
        x: root.leftPadding
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 12
        width: root.availableWidth
        height: implicitHeight
        radius: height / 2
        color: "#EBEDEF"

        Rectangle {
            width: root.visualPosition * parent.width
            height: parent.height
            color: root.checkedColor
            radius: height / 2
        }
    }

    handle: Rectangle {
        x: root.leftPadding + root.visualPosition * (root.availableWidth - width)
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: root.background.implicitHeight + 6
        implicitHeight: implicitWidth
        radius: implicitWidth / 2
        color: root.pressed ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
    }
}
