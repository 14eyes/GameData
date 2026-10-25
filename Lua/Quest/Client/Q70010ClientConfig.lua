return {
    MainID = 70010,
    ActorAlias = "70010",
    SubIDs = {
        q7001001 = 7001001,
        q7001003 = 7001003,
        q7001004 = 7001004,
        q7001005 = 7001005,
        q7001008 = 7001008,
        q7001009 = 7001009,
        q7001010 = 7001010,
        q7001011 = 7001011,
        q7001012 = 7001012,
        q7001013 = 7001013,
        q7001014 = 7001014,
        q7001015 = 7001015,
        q7001002 = 7001002,
        q7001006 = 7001006,
        q7001007 = 7001007
    },
    Npcs = {
        Npc1409Data = {
            id = 1409,
            alias = "Npc1409",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20601CyrusPos")
        },
        Npc1523Data = {
            id = 1523,
            alias = "Npc1523",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70010Jose")
        },
        Npc1644Data = {
            id = 1644,
            alias = "Npc1644",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70010Helen")
        }
    },
    Datas = {
        NarratorTable = {
            {dialogID = 700100190, audioEvtName = "", duration = 4},
            {dialogID = 700100191, audioEvtName = "", duration = 4}
        },
        Q70010Trigger_ = {
            alias = "Q70010Trigger",
            script = "Actor/Gadget/Q70010Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70010ChurchArea")
        }
    }
}
