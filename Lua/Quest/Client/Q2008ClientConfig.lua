return {
    MainID = 2008,
    ActorAlias = "2008",
    SubIDs = {
        q200807 = 200807,
        q200805 = 200805,
        q200806 = 200806,
        q200801 = 200801,
        q200802 = 200802,
        q200803 = 200803,
        q200804 = 200804,
        q200808 = 200808
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1033Data = {
            id = 1033,
            alias = "Npc1033",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1036Data = {
            id = 1036,
            alias = "Npc1036",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12008Data = {
            id = 12008,
            alias = "Npc12008",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12009Data = {
            id = 12009,
            alias = "Npc12009",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1013Data = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70710476Data = {
            id = 70710476,
            alias = "Gadget70710476",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 200801, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q200801Trigger_ = {
            alias = "Q200801Trigger",
            script = "Actor/Gadget/Q200801Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200801trigger")
        },
        Q200806Trigger_ = {
            alias = "Q200806Trigger",
            script = "Actor/Gadget/Q200806Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(1060, "Q2003trigger")
        },
        Q2008Trigger_ = {
            alias = "Q2008Trigger",
            script = "Actor/Gadget/Q2008Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200901born")
        }
    }
}
