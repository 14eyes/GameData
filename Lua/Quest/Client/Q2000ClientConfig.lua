return {
    MainID = 2000,
    ActorAlias = "2000",
    SubIDs = {
        q200001 = 200001,
        q200002 = 200002,
        q200003 = 200003,
        q200004 = 200004,
        q200011 = 200011,
        q200005 = 200005,
        q200006 = 200006,
        q200007 = 200007,
        q200008 = 200008,
        q200009 = 200009,
        q200010 = 200010
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc207701Data = {
            id = 207701,
            alias = "Npc207701",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1031Data = {
            id = 1031,
            alias = "Npc1031",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1032Data = {
            id = 1032,
            alias = "Npc1032",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10415Data = {
            id = 10415,
            alias = "Npc10415",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId01 = {narratorId = 200001, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId02 = {narratorId = 200002, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q200001Trigger_ = {
            alias = "Q200001Trigger",
            script = "Actor/Gadget/Q200001Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200002Player")
        },
        Q200011Trigger_ = {
            alias = "Q200011Trigger",
            script = "Actor/Gadget/Q200011Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200011Trigger")
        },
        Q200004Trigger_ = {
            alias = "Q200004Trigger",
            script = "Actor/Gadget/Q200004Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200004Beidou")
        }
    }
}
