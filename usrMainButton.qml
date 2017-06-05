import QtQuick 2.0

Rectangle{
    id:rectFirst;
    width: 100;
    height: 100;
    color: "#66CC66";
    anchors.left: parent.left;
    anchors.top: parent.top;
    anchors.leftMargin: 5;
    anchors.topMargin: 5;

    property alias text: alias ;

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
        }
        onEntered: {
            text.font.bold = true;
        }
        onExited: {
            text.font.bold = false;
        }

    }
}
