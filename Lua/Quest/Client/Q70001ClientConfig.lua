return {
    MainID = 70001,
    ActorAlias = "70001",
    SubIDs = {
        q7000110 = 7000110,
        q7000101 = 7000101,
        q7000102 = 7000102,
        q7000103 = 7000103,
        q7000106 = 7000106,
        q7000107 = 7000107,
        q7000104 = 7000104,
        q7000105 = 7000105,
        q7000111 = 7000111
    },
    Npcs = {
        Npc152501Data = {
            id = 152501,
            alias = "Npc152501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10396Data = {
            id = 10396,
            alias = "Npc10396",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10397Data = {
            id = 10397,
            alias = "Npc10397",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10398Data = {
            id = 10398,
            alias = "Npc10398",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q70001Trigger_ = {
            alias = "Q70001Trigger",
            script = "Actor/Gadget/Q70001Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7000101wei")
        },
        Q7000104Trigger_ = {
            alias = "Q7000104Trigger",
            script = "Actor/Gadget/Q7000104Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7000104guild")
        },
        NarratorTable1 = {narratorId = 7000101, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorTable2 = {narratorId = 7000102, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
    }
}
