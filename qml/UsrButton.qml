import QtQuick 2.0

Rectangle{
    width: 100;
    height: 100;
    color: "#66CC66";
    anchors.left: parent.left;
    anchors.top: parent.top;
    anchors.leftMargin: 5;
    anchors.topMargin: 5;

    property alias text: _text ;
    property alias mous: msArea;

    // 鼠标点击后发送的信号
    signal btn_clicked();

    Text {
        id:_text;
        color: "#FFFFFF";
        font{pixelSize: 24;bold: false;}
        text: qsTr("Gateway\r\nConfig");
        anchors.centerIn: parent;
        horizontalAlignment: Text.AlignHCenter;
    }

    MouseArea{
        id:msArea;
        anchors.fill: parent;
        hoverEnabled: true;

        onPressed: {
            text.font.pixelSize = 20;
        }
        onReleased: {
            text.font.pixelSize = 24;
            btn_clicked();
        }
        onEntered: {
            parent.width = parent.width + 10;
            parent.height = parent.height + 10;
            text.font.bold = true;
        }
        onExited: {
            parent.width = parent.width - 10;
            parent.height = parent.height - 10;
            text.font.bold = false;
        }

    }
}

