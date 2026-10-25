return {
    MainID = 41113,
    ActorAlias = "41113",
    SubIDs = {
        q4111301 = 4111301,
        q4111318 = 4111318,
        q4111302 = 4111302,
        q4111303 = 4111303,
        q4111304 = 4111304,
        q4111305 = 4111305,
        q4111306 = 4111306,
        q4111310 = 4111310,
        q4111312 = 4111312,
        q4111313 = 4111313,
        q4111314 = 4111314,
        q4111320 = 4111320,
        q4111311 = 4111311,
        q4111315 = 4111315,
        q4111307 = 4111307,
        q4111316 = 4111316,
        q4111308 = 4111308,
        q4111319 = 4111319,
        q4111317 = 4111317,
        q4111309 = 4111309
    },
    Npcs = {
        Npc10095Data = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111213Mona")
        },
        Npc10011Data = {
            id = 10011,
            alias = "Npc10011",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111309Fischl")
        },
        Npc30010Data = {
            id = 30026,
            alias = "Npc30010",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q4111304NPC")
        },
        Npc30026Data = {
            id = 30026,
            alias = "Npc30026",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q4111314GaoSix")
        },
        Npc10095Data2 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111307Mona")
        },
        Npc10095Data3 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111308Mona")
        },
        Npc10012Data = {
            id = 10012,
            alias = "Npc10012",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30015Data = {
            id = 30015,
            alias = "Npc30015",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Q4111303Target = {id = 70300118, alias = "Q4111303Target", point = sceneData:GetDummyPoint(3, "Q4111303Target")},
        Q4111304Target = {id = 70300118, alias = "Q4111304Target", point = sceneData:GetDummyPoint(3, "Q4111304Target")}
    },
    Points = {Transfrom4111308 = sceneData:GetDummyPoint(3, "Q4111308Player")},
    Datas = {
        NarratorWithId = {narratorId = 411131701, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q41113Trigger_ = {
            alias = "Q41113Trigger",
            script = "Actor/Gadget/Q41113Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111309Fischl")
        },
        Q41113Trigger2_ = {
            alias = "Q41113Trigger2",
            script = "Actor/Gadget/Q41113Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111318Tatget")
        },
        Q41113Trigger3_ = {
            alias = "Q41113Trigger3",
            script = "Actor/Gadget/Q41113Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111309Fischl")
        },
        Q41113Trigger4_ = {
            alias = "Q41113Trigger4",
            script = "Actor/Gadget/Q41113Trigger4",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111308Player")
        }
    }
}
