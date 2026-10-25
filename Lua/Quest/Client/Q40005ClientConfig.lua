return {
    MainID = 40005,
    ActorAlias = "40005",
    SubIDs = {q4000501 = 4000501, q4000502 = 4000502, q4000503 = 4000503},
    PlayerData = {
        BornPos = sceneData:GetDummyPoint(3, "Q40005Player").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40005Player").rot
    },
    PaimonData = {Alias = "Paimon", Script = "Actor/Quest/Q352/Paimon", ID = 1005},
    XiaoData = {
        Alias = "Xiao",
        Script = "Actor/Npc/TempNPC",
        ID = 10204,
        BornPos = sceneData:GetDummyPoint(3, "Q40005Xiao").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40005Xiao").rot
    },
    ThiefData = {
        Alias = "Npc10205",
        Script = "Actor/Npc/TempNPC",
        ID = 10205,
        BornPos = sceneData:GetDummyPoint(3, "Q40005Thief").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40005Thief").rot
    },
    NarratorData = {Story1 = {{dialogID = 400050001, duration = 3.49}, {dialogID = 400050002, duration = 3.94}}}
}
