return {
    MainID = 11002,
    ActorAlias = "11002",
    SubIDs = {
        q1100201 = 1100201,
        q1100202 = 1100202,
        q1100203 = 1100203,
        q1100204 = 1100204,
        q1100205 = 1100205,
        q1100206 = 1100206,
        q1100207 = 1100207
    },
    XianglingData = {
        Alias = "Xiangling",
        Script = "Actor/Npc/TempNPC",
        ID = 1012,
        BornPos02 = sceneData:GetDummyPoint(3, "Q1100202XL").pos,
        BornDir02 = sceneData:GetDummyPoint(3, "Q1100202XL").rot,
        BornPos04 = sceneData:GetDummyPoint(3, "Q1100204XL").pos,
        BornDir04 = sceneData:GetDummyPoint(3, "Q1100204XL").rot,
        BornPos06 = sceneData:GetDummyPoint(3, "Q1100206XL").pos,
        BornDir06 = sceneData:GetDummyPoint(3, "Q1100206XL").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos = sceneData:GetDummyPoint(3, "Q1100202XL").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q1100202XL").rot
    },
    NelumboData = {
        Alias = "Nelumbo",
        ID = 100026,
        BornPos = sceneData:GetDummyPoint(3, "Q1100204M1").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q1100204M1").rot
    },
    PepperData = {
        Alias = "Pepper",
        ID = 100027,
        BornPos = sceneData:GetDummyPoint(3, "Q1100204M2").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q1100204M2").rot
    },
    NarratorFlow1 = {
        {dialogID = 110020401, audioEvtName = "", duration = 3.6},
        {dialogID = 110020402, audioEvtName = "", duration = 4},
        {dialogID = 110020403, audioEvtName = "", duration = 1.8}
    },
    NarratorFlow2 = {
        {dialogID = 110020404, audioEvtName = "", duration = 2.5},
        {dialogID = 110020405, audioEvtName = "", duration = 4.9}
    },
    NarratorFlow3 = {
        {dialogID = 110020601, audioEvtName = "", duration = 2.2},
        {dialogID = 110020602, audioEvtName = "", duration = 2.3},
        {dialogID = 110020603, audioEvtName = "", duration = 3.3},
        {dialogID = 110020604, audioEvtName = "", duration = 5},
        {dialogID = 110020605, audioEvtName = "", duration = 2.1}
    }
}
