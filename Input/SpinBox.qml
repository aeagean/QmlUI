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

SpinBox {
      id: root

      property color color: "#3498DB"

      value: 50
      editable: true

      contentItem: TextInput {
          text: root.value

          font.pixelSize: 15
          font.family: "Arial"
          font.weight: Font.Thin

          horizontalAlignment: Qt.AlignHCenter
          verticalAlignment: Qt.AlignVCenter

          readOnly: !root.editable
          validator: root.validator
      }

      up.indicator: Rectangle {
          x: root.mirrored ? 0 : parent.width - width
          implicitWidth: 37
          implicitHeight: implicitWidth
          color: root.up.pressed ? "#EBEDEF" : root.color

          Text {
              text: "+"
              anchors.fill: parent
              color: root.up.pressed ? root.color : "white"

              font.bold: true
              font.pixelSize: root.font.pixelSize * 2
              fontSizeMode: Text.Fit

              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
          }
      }

      down.indicator: Rectangle {
          x: root.mirrored ? parent.width - width : 0
          implicitWidth: root.up.indicator.implicitWidth
          implicitHeight: implicitWidth
          color: root.down.pressed ? "#EBEDEF" : root.color

          Text {
              text: "-"
              anchors.fill: parent
              color: root.down.pressed ? root.color : "white"

              font.bold: true
              font.pixelSize: root.font.pixelSize * 2
              fontSizeMode: Text.Fit

              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
          }
      }

      background: Rectangle {
          implicitWidth: 138
          border.color: "#EBEDEF"
      }
  }
