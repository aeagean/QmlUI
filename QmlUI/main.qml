/**********************************************************
 * Author: Qt君
 * 微信公众号: Qt君(首发)
 * Website: qtbig.com(后续更新)
 * Email:  2088201923@qq.com
 * QQ交流群: 732271126
 * LISCENSE: MIT
 ************************************************************/
import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.12
import "../Buttons"
import "../Input"
import "../Progress"

Window {
    id: root
    visible: true
    width: 800
    height: 480
    title: qsTr("QmlUI by Qt君")

    ListView {
        anchors.fill: parent
        model: visualItem
    }

    VisualItemModel {
        id: visualItem

        Column {
            x: 10; y: 10
            spacing: 15

            Text {
                text: "Buttons: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width - 10
                rows: 8

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

            Text {
                text: "Check Box: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 5

                Repeater {
                    model: ["#727CF5", "#0ACF97", "#F9375E", "#FFBC00", "#2B99B9"]

                    Column {
                        spacing: 15

                        CheckBox {
                            text: "Check Button 1"
                            checked: true
                            checkedColor: modelData
                        }

                        CheckBox {
                            text: "Check Button 2"
                            checkedColor: modelData
                        }

                        CheckBox {
                            text: "Check Button 3"
                            checkedColor: modelData
                        }
                    }
                }
            }

            Text {
                text: "Switch: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: switchRepeater.count

                Repeater {
                    id: switchRepeater
                    model: ["#727CF5", "#0ACF97", "#F9375E", "#FFBC00", "#2B99B9"]
                    Column {
                        spacing: 15
                        Switch {
                            checkedColor: modelData
                            checked: true
                        }

                        Switch {
                            checkedColor: modelData
                        }

                        Switch {
                            checkedColor: modelData
                            checked: true
                        }
                    }
                }
            }

            Text {
                text: "Input: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 3
                columns: 3

                Repeater {
                    id: textFieldRepeater
                    model: ["#727CF5", "#0ACF97", "#F9375E",
                            "#FFBC00", "#2B99B9", "#5A6268",
                            "#EEF2F7", "#212730"]

                    TextField {
                        checkedColor: modelData
                    }
                }

                TextField {
                    enabled: false
                    placeholderText: "禁用状态"
                }
            }

            Text {
                text: "ComboBox: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 3
                columns: 3

                Repeater {
                    id: comboboxRepeater
                    model: ["#727CF5", "#0ACF97", "#F9375E",
                            "#FFBC00", "#2B99B9", "#5A6268",
                            "#EEF2F7", "#212730", "#3498DB"]

                    ComboBox {
                        model: ["First", "Second", "Third"]
                        checkedColor: modelData
                    }
                }
            }

            Text {
                text: "Slider: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 3
                columns: 3

                Repeater {
                    id: spinBoxRepeater
                    model: ["#727CF5", "#0ACF97", "#F9375E",
                            "#FFBC00", "#2B99B9", "#5A6268",
                            "#EEF2F7", "#212730", "#3498DB"]

                    Slider {
                        checkedColor: modelData
                        value: Math.random()
                    }
                }
            }

            Text {
                text: "ProgressBar: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 3
                columns: 3

                Repeater {
                    model: ["#727CF5", "#0ACF97", "#F9375E",
                            "#FFBC00", "#2B99B9", "#5A6268",
                            "#EEF2F7", "#212730", "#3498DB"]

                    ProgressBar {
                        color: modelData
                        value: Math.random()
                    }
                }
            }

            Text {
                text: "SpinBox: "
                font.pixelSize: 18
                font.family: "Arial"
                font.weight: Font.Thin
                color: "#a0000000"
            }

            GridLayout {
                width: root.width
                rows: 3
                columns: 3

                Repeater {
                    model: ["#727CF5", "#0ACF97", "#F9375E",
                            "#FFBC00", "#2B99B9", "#5A6268",
                            "#EEF2F7", "#212730", "#3498DB"]

                    SpinBox {
                        value: Math.random()
                    }
                }
            }
        }
    }
}
