return {
    MainID = 11000,
    ActorAlias = "11000",
    SubIDs = {q1100001 = 1100001, q1100002 = 1100002, q1100003 = 1100003, q1100004 = 1100004, q1100005 = 1100005},
    XianglingData = {
        Alias = "Xiangling",
        Script = "Actor/Npc/TempNPC",
        ID = 1012,
        BornPos01 = sceneData:GetDummyPoint(3, "Q1100001XL").pos,
        BornDir01 = sceneData:GetDummyPoint(3, "Q1100001XL").rot,
        BornPos03 = sceneData:GetDummyPoint(3, "Q1100003XL").pos,
        BornDir03 = sceneData:GetDummyPoint(3, "Q1100003XL").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos03 = sceneData:GetDummyPoint(3, "Q1100003Paimon").pos,
        BornDir03 = sceneData:GetDummyPoint(3, "Q1100003Paimon").rot
    },
    AllanData = {
        Alias = "Npc153901",
        Script = "Actor/Npc/TempNPC",
        ID = 153901,
        BornPos06 = sceneData:GetDummyPoint(3, "Q1100006Allan").pos,
        BornDir06 = sceneData:GetDummyPoint(3, "Q1100006Allan").rot
    },
    NarratorFlow1 = {
        {dialogID = 110000101, audioEvtName = "", duration = 3},
        {dialogID = 110000102, audioEvtName = "", duration = 3}
    },
    NarratorFlow2 = {
        {dialogID = 110000403, audioEvtName = "", duration = 4},
        {dialogID = 110000404, audioEvtName = "", duration = 3},
        {dialogID = 110000405, audioEvtName = "", duration = 5},
        {dialogID = 110000406, audioEvtName = "", duration = 6}
    }
}
