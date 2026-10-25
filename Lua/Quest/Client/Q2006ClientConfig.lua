return {
    MainID = 2006,
    ActorAlias = "2006",
    SubIDs = {
        q200601 = 200601,
        q200602 = 200602,
        q200603 = 200603,
        q200608 = 200608,
        q200609 = 200609,
        q200604 = 200604,
        q200605 = 200605,
        q200606 = 200606,
        q200607 = 200607,
        q200610 = 200610
    },
    Npcs = {
        Npc12004Data = {
            id = 3034,
            alias = "Npc3034",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12005Data = {
            id = 3031,
            alias = "Npc3031",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12006Data = {
            id = 12006,
            alias = "Npc12006",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12007Data = {
            id = 12007,
            alias = "Npc12007",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1034Data = {
            id = 1034,
            alias = "Npc1034",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12005Data1 = {
            id = 12005,
            alias = "Npc12005",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId1 = {narratorId = 20060101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId2 = {narratorId = 20060102, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId3 = {narratorId = 20060103, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q200606Trigger_ = {
            alias = "Q200606Trigger",
            script = "Actor/Gadget/Q200606Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "q200605trigger")
        },
        Q200607Trigger_ = {
            alias = "Q200607Trigger",
            script = "Actor/Gadget/Q200607Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200607born")
        },
        Q200604Trigger_ = {
            alias = "Q200604Trigger",
            script = "Actor/Gadget/Q200604Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200605mass1")
        },
        Q200608Trigger_ = {
            alias = "Q200608Trigger",
            script = "Actor/Gadget/Q200608Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200608task1")
        },
        Q200609Trigger_ = {
            alias = "Q200609Trigger",
            script = "Actor/Gadget/Q200609Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200608task2")
        },
        Q200601Trigger_ = {
            alias = "Q200601Trigger",
            script = "Actor/Gadget/Q200601Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "q200605trigger")
        }
    }
}
