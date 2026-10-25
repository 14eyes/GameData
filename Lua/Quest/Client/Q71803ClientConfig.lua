return {
    MainID = 71803,
    ActorAlias = "71803",
    SubIDs = {
        q7180301 = 7180301,
        q7180302 = 7180302,
        q7180303 = 7180303,
        q7180304 = 7180304,
        q7180305 = 7180305,
        q7180306 = 7180306
    },
    Npcs = {
        Npc2016Data = {
            id = 2016,
            alias = "Npc2016",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "WQ7180306NPCLanJie")
        },
        Npc20180Data = {
            id = 20180,
            alias = "Npc20180",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "WQ7180304NPCBorn")
        }
    },
    Datas = {
        TransmitPoint = {point_id = 1, scene_id = 3, pos = "WQ7180304TalkPos"},
        TransmitPoint = {point_id = 2, scene_id = 3, pos = "WQ7180306Player"}
    }
}
