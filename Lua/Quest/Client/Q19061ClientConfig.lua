return {
    MainID = 19061,
    ActorAlias = "19061",
    SubIDs = {
        q1906102 = 1906102,
        q1906103 = 1906103,
        q1906104 = 1906104,
        q1906105 = 1906105,
        q1906106 = 1906106,
        q1906107 = 1906107,
        q1906111 = 1906111,
        q1906108 = 1906108,
        q1906109 = 1906109,
        q1906110 = 1906110
    },
    Npcs = {
        Npc1027Data = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19061NoelStart")
        },
        Npc11001Data1 = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062LiarStart")
        },
        Npc1027Data2 = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute5")
        },
        Npc1027Data3 = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062NoelRunRoute3")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute1").pos,
            sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute2").pos,
            sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute3").pos,
            (sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute4")),
            sceneData:GetDummyPoint(3, "Q19062NoelWalkRoute5")
        },
        RoutePointsDataRun = {
            sceneData:GetDummyPoint(3, "Q19062NoelRunRoute1").pos,
            sceneData:GetDummyPoint(3, "Q19062NoelRunRoute2").pos,
            sceneData:GetDummyPoint(3, "Q19062NoelRunRoute3").pos
        },
        NarratorWithId = {narratorId = 1906105, pauseLen = 10, resumeLen = 5, tag = "Story"},
        RoutePointsData2 = {
            sceneData:GetDummyPoint(3, "Q19068NewWalkRoute1").pos,
            sceneData:GetDummyPoint(3, "Q19068NewWalkRoute2").pos,
            sceneData:GetDummyPoint(3, "Q19068NewWalkRoute3").pos
        }
    }
}
