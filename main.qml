import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    ScrollView {
        id: scrollView
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 10
            delegate: Item {
                width: parent.width
                height: 100

                Row {
                    spacing: 10 // 设置间距
                    Image {
                        source: "avatar.png"
                        width: 80
                        height: 80
                    }

                    Column {
                        spacing: 10
                        Text {
                            text: "User " + (index + 1)
                            font.pixelSize: 24
                        }
                        Text {
                            text: "Role " + (index + 1)
                            font.pixelSize: 24
                        }
                    }
                }

                Button {
                    text: "Settings"
                    onClicked: console.log("Settings clicked for user " + (index + 1))
                    anchors.right: parent.right
                    width: 100 // Adjust to fit your desired button size
                }
            }
        }
    }
}
