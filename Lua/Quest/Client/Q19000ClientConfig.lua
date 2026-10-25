return {
    MainID = 19000,
    ActorAlias = "19000",
    SubIDs = {
        q1900001 = 1900001,
        q1900002 = 1900002,
        q1900003 = 1900003,
        q1900004 = 1900004,
        q1900005 = 1900005,
        q1900006 = 1900006,
        q1900007 = 1900007,
        q1900008 = 1900008,
        q1900009 = 1900009,
        q1900010 = 1900010,
        q1900011 = 1900011
    },
    Npcs = {
        Coop_BarbaraData = {
            id = 501,
            alias = "Coop_Barbara",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1471Data = {
            id = 1471,
            alias = "Npc1471",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc147101Data = {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId1900104 = {narratorId = 1900104, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId1900105 = {narratorId = 1900105, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q19000Trigger_ = {
            alias = "Q19000Trigger",
            script = "Actor/Gadget/Q19000Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Babala03")
        },
        Q19000Trigger02_ = {
            alias = "Q19000Trigger02",
            script = "Actor/Gadget/Q19000Trigger02",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Babala01")
        }
    }
}
