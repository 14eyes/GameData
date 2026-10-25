return {
    MainID = 70000,
    ActorAlias = "70000",
    SubIDs = {
        q7000010 = 7000010,
        q7000001 = 7000001,
        q7000002 = 7000002,
        q7000004 = 7000004,
        q7000005 = 7000005,
        q7000003 = 7000003,
        q7000006 = 7000006
    },
    Npcs = {
        Npc164201Data = {
            id = 164201,
            alias = "Npc164201",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc142501Data = {
            id = 142501,
            alias = "Npc142501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorTable1 = {narratorId = 7000001, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q700002Trigger_ = {
            alias = "Q700002Trigger",
            script = "Actor/Gadget/Q700002Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1011002Flora")
        },
        NarratorTable2 = {narratorId = 7000002, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorTable3 = {narratorId = 7000003, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorTable4 = {narratorId = 7000004, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
    }
}
