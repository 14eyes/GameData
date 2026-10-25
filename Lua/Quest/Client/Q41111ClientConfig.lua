return {
    MainID = 41111,
    ActorAlias = "41111",
    SubIDs = {
        q4111101 = 4111101,
        q4111104 = 4111104,
        q4111105 = 4111105,
        q4111106 = 4111106,
        q4111115 = 4111115,
        q4111116 = 4111116,
        q4111107 = 4111107,
        q4111102 = 4111102,
        q4111117 = 4111117,
        q4111109 = 4111109,
        q4111110 = 4111110,
        q4111118 = 4111118,
        q4111114 = 4111114,
        q4111112 = 4111112,
        q4111113 = 4111113,
        q4111103 = 4111103,
        q4111108 = 4111108,
        q4111111 = 4111111
    },
    Npcs = {
        Npc10011Data1 = {
            id = 10011,
            alias = "Npc10011",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111107Target")
        },
        Npc10011Data2 = {
            id = 10011,
            alias = "Npc10011",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111102Fischl")
        },
        Npc10011Data3 = {
            id = 10011,
            alias = "Npc10011",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111118Fischl")
        },
        Npc10012Data = {
            id = 10012,
            alias = "Npc10012",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1050205Avatar")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1537Data = {
            id = 1537,
            alias = "Npc1537",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1539Data = {
            id = 1539,
            alias = "Npc1539",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc153701Data = {
            id = 153701,
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc153901Data = {
            id = 153901,
            alias = "Npc153901",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111107Allan")
        }
    },
    Gadgets = {
        Q4111109Target = {id = 70300118, alias = "Q4111109Target", point = sceneData:GetDummyPoint(3, "Q4111109Target")},
        Q4111110Target = {id = 70300118, alias = "Q4111110Target", point = sceneData:GetDummyPoint(3, "Q4111110Target")}
    },
    Points = {FischlRout3 = sceneData:GetDummyPoint(3, "Q4111116Fischl")},
    Datas = {
        NarratorWithId1 = {narratorId = 411110701, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        NarratorWithId2 = {narratorId = 411110901, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId3 = {narratorId = 411110702, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        FischlRout1 = {
            sceneData:GetDummyPoint(3, "Q4111106FischlRout1").pos,
            sceneData:GetDummyPoint(3, "Q4111106Fischl").pos
        },
        FischlRout2 = {
            sceneData:GetDummyPoint(3, "Q4111106FischlRout2").pos,
            sceneData:GetDummyPoint(3, "Q4111115Fischl").pos
        },
        Q41111Trigger_ = {
            alias = "Q41111Trigger",
            script = "Actor/Gadget/Q41111Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111102Fischl")
        },
        Q41111Trigger2_ = {
            alias = "Q41111Trigger2",
            script = "Actor/Gadget/Q41111Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111107Allan")
        }
    }
}
