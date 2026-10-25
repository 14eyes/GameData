return {
    MainID = 2003,
    ActorAlias = "2003",
    SubIDs = {q200305 = 200305, q200301 = 200301, q200302 = 200302, q200303 = 200303, q200304 = 200304},
    Npcs = {
        Npc1033Data = {
            id = 1033,
            alias = "Npc1033",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1013Data = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12021Data = {
            id = 12021,
            alias = "Npc12021",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3009Data = {
            id = 3009,
            alias = "Npc3009",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3010Data = {
            id = 3010,
            alias = "Npc3010",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q200301Trigger_ = {
            alias = "Q200301Trigger",
            script = "Actor/Gadget/Q200301Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(1060, "Q2003neta")
        },
        Q200302Trigger_ = {
            alias = "Q200302Trigger",
            script = "Actor/Gadget/Q200302Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200302trigger")
        },
        Q200304Trigger_ = {
            alias = "Q200304Trigger",
            script = "Actor/Gadget/Q200304Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(1061, "Q2004trigger")
        },
        Q200305Trigger_ = {
            alias = "Q200305Trigger",
            script = "Actor/Gadget/Q200305Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200301trigger")
        }
    }
}
