return {
    MainID = 18000,
    ActorAlias = "18000",
    SubIDs = {
        q1800001 = 1800001,
        q1800002 = 1800002,
        q1800003 = 1800003,
        q1800004 = 1800004,
        q1800005 = 1800005,
        q1800006 = 1800006,
        q1800007 = 1800007,
        q1800008 = 1800008,
        q1800009 = 1800009,
        q1800010 = 1800010,
        q1800018 = 1800018,
        q1800021 = 1800021,
        q1800011 = 1800011,
        q1800028 = 1800028,
        q1800012 = 1800012,
        q1800013 = 1800013,
        q1800014 = 1800014,
        q1800015 = 1800015,
        q1800016 = 1800016,
        q1800017 = 1800017,
        q1800019 = 1800019,
        q1800022 = 1800022,
        q1800023 = 1800023,
        q1800024 = 1800024,
        q1800025 = 1800025,
        q1800026 = 1800026,
        q1800020 = 1800020,
        q1800027 = 1800027,
        q1800029 = 1800029
    },
    Npcs = {
        Npc143901Data = {
            id = 143901,
            alias = "Npc143901",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q18000loruns")
        },
        Npc141701Data = {
            id = 141701,
            alias = "Npc141701",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q18000wagena")
        },
        Npc146501Data = {
            id = 146501,
            alias = "Npc146501",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1009, "Q18000charles")
        },
        Npc151201Data = {
            id = 151201,
            alias = "Npc151201",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q18000kaiselin")
        },
        Npc102201Data = {
            id = 102201,
            alias = "Npc102201",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1022Data = {
            id = 1022,
            alias = "Npc1022",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc11005Data = {
            id = 11005,
            alias = "Npc11005",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        GadgetData1 = {id = 71700740, alias = "investigate1", point = sceneData:GetDummyPoint(3, "Q18000investigate1")},
        GadgetData3 = {id = 70710245, alias = "investigate3", point = sceneData:GetDummyPoint(3, "Q18000investigate3")}
    },
    Datas = {
        paimonnarratorbeforebenlangling = {narratorId = 1800016, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarrator431 = {narratorId = 180001903, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarrator452 = {narratorId = 180001906, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarrator451 = {narratorId = 180001901, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarratorinfeixubeforekill = {narratorId = 1800020, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonarratorbeforewind = {narratorId = 1800018, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        daiyinnarrator1 = {narratorId = 180002301, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarrator432 = {narratorId = 180001904, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        paimonnarrator433 = {narratorId = 180001905, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        daiyinnarrator2 = {narratorId = 180002302, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        Q18000Trigger2_ = {
            alias = "Q18000Trigger2",
            script = "Actor/Gadget/Q18000Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q18000monster")
        },
        Q18000Trigger1_ = {
            alias = "Q18000Trigger1",
            script = "Actor/Gadget/Q18000Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q18000daiyin3")
        },
        Q18000Trigger3_ = {
            alias = "Q18000Trigger3",
            script = "Actor/Gadget/Q18000Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q18000investigate1")
        },
        Q18000Trigger4_ = {
            alias = "Q18000Trigger4",
            script = "Actor/Gadget/Q18000Trigger4",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q18000investigate3")
        },
        Q18000Trigger5_ = {
            alias = "Q18000Trigger5",
            script = "Actor/Gadget/Q18000Trigger5",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q18000daiyin3")
        }
    }
}
