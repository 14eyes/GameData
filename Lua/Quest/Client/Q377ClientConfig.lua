return {
    MainID = 377,
    ActorAlias = "377",
    SubIDs = {q37701 = 37701, q37702 = 37702, q37703 = 37703, q37704 = 37704, q37705 = 37705, q37706 = 37706},
    NarratorFlow = {
        {dialogID = 3771201, audioEvtName = "", duration = 6},
        {dialogID = 3771202, audioEvtName = "", duration = 3.5},
        {dialogID = 3771203, audioEvtName = "", duration = 7},
        {dialogID = 3771204, audioEvtName = "", duration = 5.5},
        {dialogID = 3771205, audioEvtName = "", duration = 9.5},
        {dialogID = 3771206, audioEvtName = "", duration = 1.5},
        {dialogID = 3771207, audioEvtName = "", duration = 2},
        {dialogID = 3771208, audioEvtName = "", duration = 7},
        {dialogID = 3771209, audioEvtName = "", duration = 1.5},
        {dialogID = 3771210, audioEvtName = "", duration = 5},
        {dialogID = 3771211, audioEvtName = "", duration = 6},
        {dialogID = 3771212, audioEvtName = "", duration = 5.5}
    },
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q301/Wendy301",
        WendyID = 1001,
        bornPos = sceneData:GetDummyPoint(1009, "Q37702Venti").pos,
        bornDir = sceneData:GetDummyPoint(1009, "Q37702Venti").rot
    },
    DilucData = {
        Diluc = "Diluc",
        DilucScript = "Actor/Quest/Q376/Diluc",
        DilucID = 1009,
        bornPos = sceneData:GetDummyPoint(1009, "Q37702Diluc").pos,
        bornDir = sceneData:GetDummyPoint(1009, "Q37702Diluc").rot
    },
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos = sceneData:GetDummyPoint(1009, "Q37702Qin").pos,
        bornDir = sceneData:GetDummyPoint(1009, "Q37702Qin").rot,
        desPos = sceneData:GetDummyPoint(1009, "Q376SoldierDes").pos,
        desDir = sceneData:GetDummyPoint(1009, "Q376SoldierDes").rot
    }
}
