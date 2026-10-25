return {
    MainID = 71808,
    ActorAlias = "71808",
    SubIDs = {
        q7180801 = 7180801,
        q7180802 = 7180802,
        q7180803 = 7180803,
        q7180804 = 7180804,
        q7180809 = 7180809,
        q7180808 = 7180808,
        q7180805 = 7180805,
        q7180806 = 7180806,
        q7180807 = 7180807,
        q7180810 = 7180810,
        q7180811 = 7180811
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q71808Paimon")
        }
    },
    Datas = {
        Paimon02 = {{dialogID = 718080701, audioEvtName = "", duration = 4}},
        Paimon03 = {{dialogID = 718080702, audioEvtName = "", duration = 4}},
        Paimon05 = {
            {dialogID = 718080703, audioEvtName = "", duration = 4},
            {dialogID = 718080704, audioEvtName = "", duration = 4}
        },
        Paimon08 = {{dialogID = 718080705, audioEvtName = "", duration = 4}},
        Paimon09 = {{dialogID = 718080706, audioEvtName = "", duration = 4}},
        Paimon04New = {
            {dialogID = 718080707, audioEvtName = "", duration = 4},
            {dialogID = 718080708, audioEvtName = "", duration = 4}
        },
        Paimon05New = {{dialogID = 718080709, audioEvtName = "", duration = 4}},
        Paimon09New = {
            {dialogID = 718080710, audioEvtName = "", duration = 4},
            {dialogID = 718080711, audioEvtName = "", duration = 4}
        },
        Q71808Trigger_ = {
            alias = "Q71808Trigger",
            script = "Actor/Gadget/Q71808Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q71808Player")
        }
    }
}
