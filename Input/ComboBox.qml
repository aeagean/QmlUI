import QtQuick 2.0
import QtQuick.Controls 2.0

ComboBox {
    id: root

    property color checkedColor: "#1ABC9C"

    delegate: ItemDelegate {
        width: root.width

        contentItem: Text {
            text: modelData
            color: root.highlightedIndex === index ? "white" : "black"
            font.family: "Arial"
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }

        background: Rectangle {
             width: parent.width
             height: parent.height
             color: root.highlightedIndex === index ? root.checkedColor : "#F3F4F5"
         }
    }

    indicator: Canvas {
        id: canvas
        x: root.width - width - 10
        y: (root.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: root
            onPressedChanged: canvas.requestPaint()
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = "white"
            context.fill();
        }
    }

    contentItem: Item {
        width: root.background.width - root.indicator.width - 10
        height: root.background.height

        Text {
            anchors.verticalCenter: parent.verticalCenter
            x: 10
            text: root.displayText
            elide: Text.ElideRight

            font.pixelSize: 15
            font.family: "Arial"
            font.weight: Font.Thin
            color: root.down ? Qt.rgba(255, 255, 255, 0.75) : "white"
        }
    }

    background: Rectangle {
        implicitWidth: 102
        implicitHeight: 41
        color: root.down ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
        radius: 5
    }

    popup: Popup {
        y: root.height - 1
        width: root.width
        implicitHeight: contentItem.implicitHeight
        padding: 0

        contentItem: ListView {
            implicitHeight: contentHeight
            model: root.popup.visible ? root.delegateModel : null
            clip: true
            currentIndex: root.highlightedIndex

            ScrollIndicator.vertical: ScrollIndicator { }
        }

        background: Rectangle {
            color: "#F3F4F5"
            radius: 5
            clip: true
        }
    }
}
