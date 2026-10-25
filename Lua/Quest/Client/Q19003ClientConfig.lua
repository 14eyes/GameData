return {
    MainID = 19003,
    ActorAlias = "19003",
    SubIDs = {
        q1900301 = 1900301,
        q1900302 = 1900302,
        q1900303 = 1900303,
        q1900304 = 1900304,
        q1900305 = 1900305,
        q1900306 = 1900306,
        q1900307 = 1900307,
        q1900308 = 1900308
    },
    Npcs = {
        Coop_BarbaraData = {
            id = 501,
            alias = "Coop_Barbara",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
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
        Npc1602Data = {
            id = 1602,
            alias = "Npc1602",
            script = "Actor/Npc/NpcFSMBehaviour",
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
        NarratorWithId19003001 = {narratorId = 19003001, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q19003TriggerBabala03_ = {
            alias = "Q19003TriggerBabala03",
            script = "Actor/Gadget/Q19003TriggerBabala03",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Babala03")
        },
        Q19003Trigger190030501_ = {
            alias = "Q19003Trigger190030501",
            script = "Actor/Gadget/Q19003Trigger190030501",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "COOP101401Babala04")
        }
    }
}
