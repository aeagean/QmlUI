import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12
import "../Buttons"

Window {
    id: root
    visible: true
    width: 800
    height: 480
    title: qsTr("QmlUI by Qt君")

    Column {
        x: 10; y: 10
        spacing: 10
        Text {
            text: "Buttons: "
            font.pixelSize: 18
            font.family: "Arial"
            font.weight: Font.Thin
            color: "#a0000000"
        }

        Row {
            spacing: 15

            Button {
                text: "First"
                backgroundDefaultColor: "#727CF5"
            }

            Button {
                text: "Secondary"
                backgroundDefaultColor: "#5A6268"
            }

            Button {
                text: "Success"
                backgroundDefaultColor: "#0ACF97"
            }

            Button {
                text: "Danger"
                backgroundDefaultColor: "#F9375E"
            }

            Button {
                text: "Warning"
                contentItemTextColor: "#313A46"
                backgroundDefaultColor: "#FFBC00"
            }

            Button {
                text: "Info"
                backgroundDefaultColor: "#2B99B9"
            }

            Button {
                text: "Light"
                contentItemTextColor: "#313A46"
                backgroundDefaultColor: "#EEF2F7"
            }

            Button {
                backgroundDefaultColor: "#212730"
                backgroundPressedColor: "#313A46"
            }
        }

        Text {
            text: "Radio Button: "
            font.pixelSize: 18
            font.family: "Arial"
            font.weight: Font.Thin
            color: "#a0000000"
        }

        GridLayout {
            width: root.width
            rows: 5

            Repeater {
                model: ["#727CF5", "#0ACF97", "#F9375E", "#FFBC00", "#2B99B9"]//, "#212730"]

                Column {
                    spacing: 15

                    RadioButton {
                        text: "Radio Button 1"
                        checked: true
                        checkedColor: modelData
                    }

                    RadioButton {
                        text: "Radio Button 2"
                        checkedColor: modelData
                    }

                    RadioButton {
                        text: "Radio Button 3"
                        checkedColor: modelData
                    }
                }
            }
        }
    }
}
