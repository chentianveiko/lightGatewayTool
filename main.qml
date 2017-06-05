import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id:mainWindow;
    visible: true
    width: 355;
    minimumWidth: 355;
    maximumWidth: 355;
    height: 245;
    minimumHeight: 245;
    maximumHeight: 245;
    title: qsTr("YanTech Gateway Tool");

    Rectangle{
        id:mainForm;
        width: parent.width;
        height: parent.height;
        color: "#336699";

        UsrMainButton{
            id:btn_enterGwConfig;
            anchors.left: parent.left;
            width: 100;
            height: 100;
            color: "#66CC66";
            text.text: qsTr("Gateway")+"\r\n" + qsTr("Config");
        }

        UsrMainButton{
            id:btn_enterGwTest;
            anchors.left: btn_enterGwConfig.right;
            width: 100;
            height: 100;
            color: "#993399";
            text.text: qsTr("Gateway")+"\r\n" + qsTr("Test");
        }

        UsrMainButton{
            id:btn_SoftInf;
            anchors.left: btn_enterGwConfig.right;
            anchors.top: btn_enterGwTest.bottom;
            width: 100;
            height: 100;
            color: "#0099CC";
            text.text: qsTr("About");
        }

        UsrMainButton{
            id:btn_exitProgram;
            anchors.left: btn_SoftInf.right;
            anchors.top: btn_enterGwTest.bottom;
            width: 100;
            height: 100;
            color: "#FF6600";
            text.text: qsTr("EXIT");
        }
    }
}

