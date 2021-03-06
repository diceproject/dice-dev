import DICE.App 1.0
import DICE.App.Dakota 1.0


Card {
    enabled: selectedExperiment.currentRealText === 'dace'
    visible: enabled
    visibleShadowAndBorder: false
    expanderVisible: false

    BodyText {
        text: "Design and Analysis of Computer Experiments."
        horizontalAlignment: Text.AlignHCenter
    }
    Subheader {
        horizontalAlignment: Text.AlignHCenter
        text: {
            if (sampleType.currentText === "grid")
                return "Grid Sampling"
            if (sampleType.currentText === "random")
                return "Pure Random Sampling"
            if (sampleType.currentText === "oas")
                return "Orthogonal Array Sampling"
            if (sampleType.currentText === "lhs")
                return "Latin Hypercube Sampling"
            if (sampleType.currentText === "oa_lhs")
                return "Orthogonal Array Latin Hypercube Sampling"
            if (sampleType.currentText === "box_behnken")
                return "Box-Behnken"
            if (sampleType.currentText === "central_composite")
                return "Central Composite Design"
            else
                return ""
        }
    }
    DakotaKeywordDropDown {
        id: sampleType
        label: "Sample Type"
        path: "input.in method"
//        getModelMethod: "get_dace_sample_type_model"
        modelPath: "sample_types dace"
    }
    DakotaValue {
        label: "Samples"
        path: "input.in method samples"
        dataType: "int"
    }
    DakotaValue {
        label: "Seed"
        path: "input.in method seed"
        dataType: "int"
    }
}
