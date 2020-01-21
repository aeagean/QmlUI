import QtQuick 2.5
import QtQuick.Controls 2.0

RangeSlider {
    id: root

    property color checkedColor: "#3498DB"

    first.value: 0.25
    second.value: 0.75

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
            x: root.first.visualPosition * parent.width
            width: root.second.visualPosition * parent.width - x
            height: parent.height
            color: root.checkedColor
            radius: height / 2
        }
    }

    first.handle: Rectangle {
        x: root.leftPadding + first.visualPosition * (root.availableWidth - width)
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: root.background.implicitHeight + 6
        implicitHeight: implicitWidth
        radius: implicitWidth / 2
        color: first.pressed ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
        border.color: Qt.darker(root.checkedColor, 0.93)
    }

    second.handle: Rectangle {
        x: root.leftPadding + second.visualPosition * (root.availableWidth - width)
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: root.background.implicitHeight + 6
        implicitHeight: implicitWidth
        radius: implicitWidth / 2
        color: second.pressed ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
        border.color: Qt.darker(root.checkedColor, 0.93)
    }
}
