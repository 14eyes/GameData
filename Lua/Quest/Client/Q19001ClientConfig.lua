return {
    MainID = 19001,
    ActorAlias = "19001",
    SubIDs = {
        q1900101 = 1900101,
        q1900102 = 1900102,
        q1900103 = 1900103,
        q1900104 = 1900104,
        q1900105 = 1900105,
        q1900106 = 1900106,
        q1900107 = 1900107,
        q1900108 = 1900108,
        q1900109 = 1900109
    },
    Npcs = {
        Npc147101Data = {
            id = 147101,
            alias = "Npc147101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1471Data = {
            id = 1471,
            alias = "Npc1471",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Coop_BarbaraData = {
            id = 501,
            alias = "Coop_Barbara",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1602Data = {
            id = 1602,
            alias = "Npc1602",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc160201Data = {
            id = 160201,
            alias = "Npc160201",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        BarbaraData = {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId19001001 = {narratorId = 19001001, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId19001002 = {narratorId = 19001002, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId19001003 = {narratorId = 19001003, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        RoutePointsData1900104 = {
            {x = 2017.665, y = 260.5107, z = -359.7331},
            {x = 2014.083, y = 260.6381, z = -359.0024},
            sceneData:GetDummyPoint(3, "COOP101401Babala02").pos
        },
        Q19001TriggerBaebarar01_ = {
            alias = "Q19001TriggerBaebarar01",
            script = "Actor/Gadget/Q19001TriggerBaebarar01",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Babala01")
        },
        Q19001TriggerAlbert01_ = {
            alias = "Q19001TriggerAlbert01",
            script = "Actor/Gadget/Q19001TriggerAlbert01",
            id = 70900002,
            point = {pos = {x = 2044.636, y = 259.2082, z = -331.9006}, rot = {x = 0, y = 0, z = 0}}
        },
        Q19001TriggerAlbert02_ = {
            alias = "Q19001TriggerAlbert02",
            script = "Actor/Gadget/Q19001TriggerAlbert02",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Albert01")
        }
    }
}
