return {
    MainID = 41411,
    ActorAlias = "41411",
    SubIDs = {
        q4141115 = 4141115,
        q4141101 = 4141101,
        q4141114 = 4141114,
        q4141102 = 4141102,
        q4141103 = 4141103,
        q4141105 = 4141105,
        q4141106 = 4141106,
        q4141107 = 4141107,
        q4141108 = 4141108,
        q4141109 = 4141109,
        q4141110 = 4141110,
        q4141111 = 4141111,
        q4141112 = 4141112,
        q4141104 = 4141104,
        q4141113 = 4141113
    },
    Npcs = {
        paimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        GaiaData = {
            id = 1004,
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        WendyData = {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        QinData = {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        LisaData = {
            id = 1007,
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        BarbaraData = {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1028Data = {
            id = 1028,
            alias = "Npc1028",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1020Data = {
            id = 1020,
            alias = "Npc1020",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc146101Data = {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
            LeavePos = sceneData:GetDummyPoint(3, "Q4141114Ninglu").pos,
            LeaveDir = sceneData:GetDummyPoint(3, "Q4141114Ninglu").rot,
            LeavePos01 = sceneData:GetDummyPoint(3, "Q4141114Leave").pos
        }
    },
    Datas = {
        Q4141105Trigger_ = {
            alias = "Q4141105Trigger",
            script = "Actor/Gadget/Q4141105Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4141115Player")
        },
        Q4141106Trigger_ = {
            alias = "Q4141106Trigger",
            script = "Actor/Gadget/Q4141106Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4141106Trigger")
        },
        Q4141111Trigger_ = {
            alias = "Q4141111Trigger",
            script = "Actor/Gadget/Q4141111Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4141111Trigger")
        },
        Q4141108Trigger_ = {
            alias = "Q4141108Trigger",
            script = "Actor/Gadget/Q4141108Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(1008, "Q4141206Barbara")
        }
    },
    NarratorWithId01 = {narratorId = 414111201, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
    NarratorWithId02 = {narratorId = 414111301, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
}
