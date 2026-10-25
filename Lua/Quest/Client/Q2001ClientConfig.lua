return {
    MainID = 2001,
    ActorAlias = "2001",
    SubIDs = {
        q200101 = 200101,
        q200102 = 200102,
        q200114 = 200114,
        q200103 = 200103,
        q200104 = 200104,
        q200105 = 200105,
        q200106 = 200106,
        q200107 = 200107,
        q200108 = 200108,
        q200109 = 200109,
        q200110 = 200110,
        q200111 = 200111,
        q200112 = 200112,
        q200113 = 200113
    },
    Npcs = {
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
        Npc10413Data = {
            id = 10413,
            alias = "Npc10413",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10419Data = {
            id = 10419,
            alias = "Npc10419",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10420Data = {
            id = 10420,
            alias = "Npc10420",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10421Data = {
            id = 10421,
            alias = "Npc10421",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId01 = {narratorId = 200101, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId02 = {narratorId = 200102, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId03 = {narratorId = 200103, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId04 = {narratorId = 200104, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId05 = {narratorId = 200105, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q200110Trigger_ = {
            alias = "Q200110Trigger",
            script = "Actor/Gadget/Q200110Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200111Player")
        },
        Q200102Trigger_ = {
            alias = "Q200102Trigger",
            script = "Actor/Gadget/Q200102Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200011Trigger")
        },
        Q200105Trigger_ = {
            alias = "Q200105Trigger",
            script = "Actor/Gadget/Q200105Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200011Trigger")
        }
    }
}
