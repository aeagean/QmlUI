import QtQuick 2.7
import QtQuick.Window 2.2
import "../Button"

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("QmlUI by Qt君")

    Row {
        anchors.centerIn: parent
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
}
