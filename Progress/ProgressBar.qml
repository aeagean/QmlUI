import QtQuick 2.0
import QtQuick.Controls 2.0

ProgressBar {
    id: root

    property color color: "#3498DB"

    value: 0.5
    padding: 2

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 12
        color: "#EBEDEF"
        radius: implicitHeight / 2
    }

    contentItem: Item {
        implicitWidth: root.background.implicitWidth
        implicitHeight: root.background.implicitHeight

        Rectangle {
            width: root.visualPosition * parent.width
            height: parent.height
            color: root.color
        }
    }
}
