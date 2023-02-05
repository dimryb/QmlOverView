import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function updateColor(){
        win.color = Qt.rgba(Math.random(), Math.random(), Math.random())
    }

    Button {
        id: button1
        text: "Click me"
        anchors.centerIn: parent

        onClicked: {
            updateColor()
        }
    }

    RoundButton {
        id: root
        text: "Click me"

        onClicked: {
            updateColor()
        }
    }
}
