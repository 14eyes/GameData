return {
    MainID = 20601,
    ActorAlias = "20601",
    SubIDs = {
        q2060101 = 2060101,
        q2060102 = 2060102,
        q2060103 = 2060103,
        q2060104 = 2060104,
        q2060105 = 2060105,
        q2060106 = 2060106,
        q2060107 = 2060107,
        q2060108 = 2060108,
        q2060109 = 2060109
    },
    Npcs = {
        Npc1409Data = {
            id = 1409,
            alias = "Npc1409",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20601CyrusPos")
        },
        Npc1413Data = {
            id = 1413,
            alias = "Npc1413",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20601JackRescue")
        },
        Npc1413Data2 = {
            id = 1413,
            alias = "Npc1413",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20601JackHide")
        }
    }
}
