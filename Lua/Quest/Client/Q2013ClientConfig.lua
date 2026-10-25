return {
    MainID = 2013,
    ActorAlias = "2013",
    SubIDs = {
        q201301 = 201301,
        q201311 = 201311,
        q201302 = 201302,
        q201303 = 201303,
        q201304 = 201304,
        q201305 = 201305,
        q201306 = 201306,
        q201307 = 201307,
        q201308 = 201308,
        q201309 = 201309,
        q201312 = 201312,
        q201310 = 201310
    },
    Npcs = {
        Npc3069Data = {
            id = 3069,
            alias = "Npc3069",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3093Data = {
            id = 3093,
            alias = "Npc3093",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3085Data = {
            id = 3085,
            alias = "Npc3085",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3016Data = {
            id = 3016,
            alias = "Npc3016",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3086Data = {
            id = 3086,
            alias = "Npc3086",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12054Data = {
            id = 12054,
            alias = "Npc12054",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId01 = {narratorId = 201301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId02 = {narratorId = 201302, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId03 = {narratorId = 201303, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId04 = {narratorId = 201304, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q201303Trigger_ = {
            alias = "Q201303Trigger",
            script = "Actor/Gadget/Q201303Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Puren01")
        },
        Q201307Trigger_ = {
            alias = "Q201307Trigger",
            script = "Actor/Gadget/Q201307Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Qianli01")
        },
        Q201309Trigger_ = {
            alias = "Q201309Trigger",
            script = "Actor/Gadget/Q201309Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Stop01")
        },
        Q201301Trigger_ = {
            alias = "Q201301Trigger",
            script = "Actor/Gadget/Q201301Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Guard01")
        },
        Q201311Trigger_ = {
            alias = "Q201311Trigger",
            script = "Actor/Gadget/Q201311Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Gate01")
        },
        Q2013HSFailTrigger_ = {
            alias = "Q2013HSFailTrigger",
            script = "Actor/Gadget/Q2013HSFailTrigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013Huoyun01")
        },
        Q201308Trigger_ = {
            alias = "Q201308Trigger",
            script = "Actor/Gadget/Q201308Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q201308Player")
        },
        Q201309BlockTrigger_ = {
            alias = "Q201309BlockTrigger",
            script = "Actor/Gadget/Q201309BlockTrigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2013BlockOpen")
        }
    }
}
