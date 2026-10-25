return {
    MainID = 40003,
    ActorAlias = "40003",
    SubIDs = {q4000301 = 4000301, q4000302 = 4000302, q4000303 = 4000303},
    PlayerData = {
        BornPos = sceneData:GetDummyPoint(3, "Q4000307_Player").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q4000307_Player").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos = sceneData:GetDummyPoint(3, "Q4000307_Paimon").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q4000307_Paimon").rot
    },
    XiaoData = {
        Alias = "Xiao",
        Script = "Actor/Npc/TempNPC",
        ID = 10204,
        BornPos = sceneData:GetDummyPoint(3, "Q40003Xiao").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40003Xiao").rot
    },
    ThoarderIconData = {
        Alias = "Q40003ThoarderIcon",
        ID = 70700017,
        BornPos = sceneData:GetDummyPoint(3, "Q40007_ThiefRout2").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40007_ThiefRout2").rot
    },
    TriggerData = {
        Alias = "Q40003Trigger1",
        Script = "Actor/Gadget/Q40003Trigger",
        ID = 70900002,
        BornPos = sceneData:GetDummyPoint(3, "Q40003Target1").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40003Target1").rot
    },
    SoldierData = {
        Alias = "Npc242801",
        Script = "Actor/Npc/TempNPC",
        ID = 242801,
        BornPos = sceneData:GetDummyPoint(3, "Q40003Soldier").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q40003Soldier").rot
    },
    NarratorData = {
        Story1 = {{dialogID = 400030101, duration = 3.54}, {dialogID = 400030102, duration = 2.91}},
        Story2 = {{dialogID = 400030301, duration = 6.15}, {dialogID = 400030302, duration = 5.56}},
        Story3 = {
            {dialogID = 400031001, duration = 6.49},
            {dialogID = 400031002, duration = 7.76},
            {dialogID = 400031003, duration = 5.52},
            {dialogID = 400031004, duration = 4.65}
        }
    }
}
