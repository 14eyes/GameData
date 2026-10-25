return {
    MainID = 41120,
    ActorAlias = "41120",
    SubIDs = {
        q4112009 = 4112009,
        q4112001 = 4112001,
        q4112002 = 4112002,
        q4112003 = 4112003,
        q4112008 = 4112008,
        q4112004 = 4112004,
        q4112005 = 4112005,
        q4112006 = 4112006,
        q4112007 = 4112007
    },
    Npcs = {
        Npc1581Data = {
            id = 1581,
            alias = "Npc1581",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_fende")
        },
        Npc1429Data = {
            id = 1429,
            alias = "Npc1429",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_Grace_InitPos")
        },
        Npc1479Data = {
            id = 1479,
            alias = "Npc1479",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_Lynn_InitPos")
        },
        Npc1591Data = {
            id = 1591,
            alias = "Npc1591",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_Dulan_InitPos")
        },
        Npc1589Data = {
            id = 1589,
            alias = "Npc1589",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_Paqi_InitPos")
        },
        Npc1573Data = {
            id = 1573,
            alias = "Npc1573",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q41120_Sute_InitPos")
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 4112005, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q41120Trigger_ = {
            alias = "Q41120Trigger",
            script = "Actor/Gadget/Q41120Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q41120_fende")
        }
    }
}
