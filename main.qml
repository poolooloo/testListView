import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Window {
    id:root
    visible: true
    width: 640
    height: 480

    Rectangle{
        id:button
        height:20
        width:root.width
        color:"red"
        anchors {
            top:parent.top
            left:parent.left
            right:parent.right
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                var row = { "id": listModel.count };
                listModel.insert(0,row);
            }
        }

        Text {
            text: qsTr("add rows")
            anchors.centerIn: parent
        }
    }

    ListView{
        //        rotation:180
        width:640
        verticalLayoutDirection:  ListView.VerticalBottomToTop
        anchors{
            top:button.bottom
            bottom:parent.bottom
            left:parent.left
            right:parent.right
        }
        model: ListModel {
            id: listModel
        }
        delegate:Rectangle{
            //            rotation:180
            width:ListView.view.width
            height:100
            color:"green"

            ColumnLayout{
                //left
                Rectangle{
                    id:r1
                    Image{
                        id:headImg
                        width: 20
                        height: 20
                        source:"qrc:/head.jpg"
                    }

                    Text{
                        id:time
                        width: 20
                        height: 20
                        anchors.left: headImg.right
                        text:model.id
                    }
                }

                Rectangle{
                    id:r2
                    anchors.top: r1.bottom
                    anchors.centerIn:  parent
                    Text{
                        anchors.centerIn: parent.Center
                        text:(new Date()).toLocaleTimeString()
                    }
                }

                //right
//                Rectangle{
//                    color:"red"
//                    Image{
//                        id:headImg2
//                        Layout.alignment: Qt.AlignRight
//                        Layout.maximumWidth: 20
//                        Layout.maximumHeight: 20
//                        source:"qrc:/head.jpg"
//                    }
//                    Text{
//                        anchors.right: headImg2.left
//                        text:model.id
//                    }
//                }
//                Rectangle{
//                    color:"white"
//                    Layout.alignment: Qt.AlignCenter
//                    Layout.fillWidth: true
//                    Layout.fillHeight: true
//                    Text{
//                        Layout.alignment: Qt.AlignCenter
//                        text:(new Date()).toLocaleTimeString()
//                    }
//                }
            }

        }
    }
}
