return {
    MainID = 71810,
    ActorAlias = "71810",
    SubIDs = {
        q7181001 = 7181001,
        q7181002 = 7181002,
        q7181003 = 7181003,
        q7181004 = 7181004,
        q7181005 = 7181005,
        q7181006 = 7181006,
        q7181007 = 7181007,
        q7181008 = 7181008,
        q7181009 = 7181009
    },
    Npcs = {
        NPC20088Data1 = {
            id = 20088,
            alias = "NPC20088",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q71810Alrani1")
        },
        NPC20088Data2 = {
            id = 20088,
            alias = "NPC20088",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q71810Alrani2")
        },
        NPC20088Data3 = {
            id = 20088,
            alias = "NPC20088",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q71810Alrani3")
        }
    },
    Gadgets = {
        ElementHint = {id = 70700006, alias = "Q71810Hint", point = sceneData:GetDummyPoint(3, "Q71810Target1")}
    },
    Points = {
        Target1 = sceneData:GetDummyPoint(3, "Q71810Target1"),
        Target2 = sceneData:GetDummyPoint(3, "Q71810Target2"),
        Target3 = sceneData:GetDummyPoint(3, "Q71810Target3"),
        Target4 = sceneData:GetDummyPoint(3, "Q71810Target4")
    },
    Datas = {
        AlraniReminder = {
            {dialogID = 718100401, audioEvtName = "", duration = 4},
            {dialogID = 718100402, audioEvtName = "", duration = 4}
        }
    }
}
