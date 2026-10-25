return {
    MainID = 11004,
    ActorAlias = "11004",
    SubIDs = {q1100401 = 1100401, q1100499 = 1100499, q1100498 = 1100498, q1100402 = 1100402, q1100403 = 1100403},
    XianglingData = {
        Alias = "Xiangling",
        Script = "Actor/Npc/TempNPC",
        ID = 1012,
        BornPos = sceneData:GetDummyPoint(20005, "Q1100403XL").pos,
        BornDir = sceneData:GetDummyPoint(20005, "Q1100403XL").rot
    },
    PaimonData = {Alias = "Paimon", Script = "Actor/Quest/Q352/Paimon", ID = 1005},
    FreezeBoarData = {
        Alias = "FreezeBoar",
        ID = 70710029,
        BornPos = sceneData:GetDummyPoint(20005, "Q1100403FreezeBoar").pos,
        BornDir = sceneData:GetDummyPoint(20005, "Q1100403FreezeBoar").rot,
        BornPos98 = sceneData:GetDummyPoint(20005, "Q1100498FreezeBoar").pos,
        BornDir98 = sceneData:GetDummyPoint(20005, "Q1100498FreezeBoar").rot
    },
    NarratorFlow1 = {
        {dialogID = 110040101, audioEvtName = "", duration = 3.8},
        {dialogID = 110040102, audioEvtName = "", duration = 2.3}
    },
    NarratorFlow2 = {
        {dialogID = 110040103, audioEvtName = "", duration = 2.1},
        {dialogID = 110040104, audioEvtName = "", duration = 2.9},
        {dialogID = 110040105, audioEvtName = "", duration = 4.6}
    },
    NarratorFlow3 = {
        {dialogID = 110040106, audioEvtName = "", duration = 2.6},
        {dialogID = 110040107, audioEvtName = "", duration = 2.1},
        {dialogID = 110040108, audioEvtName = "", duration = 4.2}
    }
}
