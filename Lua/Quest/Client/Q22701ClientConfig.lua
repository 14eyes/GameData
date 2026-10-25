return {
    MainID = 22701,
    ActorAlias = "22701",
    SubIDs = {
        q2270106 = 2270106,
        q2270101 = 2270101,
        q2270102 = 2270102,
        q2270103 = 2270103,
        q2270107 = 2270107,
        q2270108 = 2270108,
        q2270104 = 2270104,
        q2270109 = 2270109,
        q2270110 = 2270110,
        q2270105 = 2270105
    },
    Npcs = {
        Npc2400Data = {
            id = 2400,
            alias = "Npc2400",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q22701_Start")
        },
        Npc2418Data = {
            id = 2418,
            alias = "Npc2418",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q22701_shimei_Talk")
        }
    },
    Datas = {
        shimei_Talk = {
            sceneData:GetDummyPoint(3, "Q22701_shimei_Start").pos,
            sceneData:GetDummyPoint(3, "Q22701_Route_2").pos,
            sceneData:GetDummyPoint(3, "Q22701_shimei_Talk").pos,
            sceneData:GetDummyPoint(3, "Q22701_shimei_Talk").rot
        },
        shixiong_go = {
            sceneData:GetDummyPoint(3, "Q22701_Route_1").pos,
            sceneData:GetDummyPoint(3, "Q22701_Route_End").pos
        },
        shixiong_Return = {
            sceneData:GetDummyPoint(3, "Q22701_Route_End").pos,
            sceneData:GetDummyPoint(3, "Q22701_Route_1").pos,
            sceneData:GetDummyPoint(3, "Q22701_Start").pos
        }
    }
}
