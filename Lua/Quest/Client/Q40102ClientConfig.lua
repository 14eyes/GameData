return {
    MainID = 40102,
    ActorAlias = "40102",
    SubIDs = {
        q4010201 = 4010201,
        q4010207 = 4010207,
        q4010202 = 4010202,
        q4010203 = 4010203,
        q4010204 = 4010204,
        q4010206 = 4010206,
        q4010205 = 4010205
    },
    Npcs = {
        Npc13161Data = {
            id = 13161,
            alias = "Npc13161",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1059Data = {
            id = 1059,
            alias = "Npc1059",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1052Data = {
            id = 1052,
            alias = "Npc1052",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13091Data = {
            id = 13091,
            alias = "Npc13091",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1064Data = {
            id = 1064,
            alias = "Npc1064",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13259Data = {
            id = 13259,
            alias = "Npc13259",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1054Data = {
            id = 1054,
            alias = "Npc1054",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q4010204_TriggerIn = sceneData:GetDummyPoint(3, "Q4010204_guide"),
        TPos_Q4010207_TriggerIn = {pos = {x = -404.0012, y = 287.9269, z = 2777.275}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q4010206_TriggerIn = {pos = {x = -0.225, y = 0.041, z = 6.57}, rot = {x = 0, y = 0, z = 0}}
    },
    Datas = {
        Q4010202_NarratorWithId = {narratorId = 4010201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q4010204_TriggerIn = {
            alias = "Q4010204_TriggerIn",
            script = "Actor/Gadget/Q4010204_TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4010204_guide")
        },
        DialogsId = {401029906},
        Q4010206_TriggerIn = {
            alias = "Q4010206_TriggerIn",
            script = "Actor/Gadget/Q4010206_TriggerIn",
            id = 70900002,
            point = {pos = {x = -0.225, y = 0.041, z = 6.57}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}
