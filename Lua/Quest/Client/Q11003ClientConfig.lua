return {
    MainID = 11003,
    ActorAlias = "11003",
    SubIDs = {q1100301 = 1100301, q1100302 = 1100302, q1100303 = 1100303, q1100304 = 1100304},
    XianglingData = {
        Alias = "Xiangling",
        Script = "Actor/Npc/TempNPC",
        ID = 1012,
        BornPos = sceneData:GetDummyPoint(3, "Q1100302XL").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q1100302XL").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos = sceneData:GetDummyPoint(3, "Q451WolfRunStart").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q451WolfRunStart").rot
    },
    OlafData = {
        Alias = "Npc163001",
        Script = "Actor/Npc/TempNPC",
        ID = 163001,
        BornPos = sceneData:GetDummyPoint(3, "Q1100302Olaf").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q1100302Olaf").rot
    },
    NarratorFlow1 = {
        {dialogID = 110030101, audioEvtName = "", duration = 1.6},
        {dialogID = 110030102, audioEvtName = "", duration = 1.6}
    }
}
