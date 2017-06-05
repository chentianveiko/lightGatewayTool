import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id:mainWindow;
    visible: true
    width: 400;
    minimumWidth: 400;
    //maximumWidth: 400;
    height: 300;
    minimumHeight: 300;
    //maximumHeight: 300;
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
        }

        UsrMainButton{
            id:btn_enterGwTest;
            anchors.left: btn_enterGwConfig.right;
            width: 100;
            height: 100;
            color: "#993399";
        }
    }
}

