import QtQuick 2.4

import DICE.App 1.0
import DICE.App.Foam 1.0

Column {
    property alias cellSize: cellSize.path
    property alias p0: p0.path
    property alias p1: p1.path
    property alias refinementThickness: refinementThickness.path

    width: parent.width

    FoamValue {
        id: cellSize
        label: "cellSize [m]"
    }
    FoamVector {
        id: p0
        xLabel: "p0_X"
        yLabel: "p0_Y"
        zLabel: "p0_Z"
    }
    FoamVector {
        id: p1
        xLabel: "p1_X"
        yLabel: "p1_Y"
        zLabel: "p1_Z"
    }
    FoamValue {
        id: refinementThickness
        label: "refinementThickness [m]"
    }
}
