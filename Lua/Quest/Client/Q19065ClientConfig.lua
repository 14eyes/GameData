return {
    MainID = 19065,
    ActorAlias = "19065",
    SubIDs = {
        q1906510 = 1906510,
        q1906513 = 1906513,
        q1906501 = 1906501,
        q1906511 = 1906511,
        q1906502 = 1906502,
        q1906503 = 1906503,
        q1906512 = 1906512,
        q1906504 = 1906504,
        q1906505 = 1906505,
        q1906506 = 1906506,
        q1906507 = 1906507,
        q1906508 = 1906508,
        q1906509 = 1906509
    },
    Npcs = {
        Npc1027DataMid = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19065ChallengeMidNoel")
        },
        Npc1027DataHE = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19067RescueNoel")
        },
        Npc11002Data = {
            id = 11002,
            alias = "Npc11002",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19067RescuePos")
        },
        Npc1027DataAdd = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19065AddedNoel")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q19065AddedPaimon")
        }
    },
    Datas = {
        TransmitPoint1 = {point_id = 1, scene_id = 3, pos = "Q19065ChallengeMidPlayer"},
        Q19065Trigger_ = {
            alias = "Q19065Trigger",
            script = "Actor/Gadget/Q19065Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19065Challenge1")
        },
        Q19065TriggerOut_ = {
            alias = "Q19065TriggerOut",
            script = "Actor/Gadget/Q19065TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19065AddedArea")
        },
        Q19065TriggerOut2_ = {
            alias = "Q19065TriggerOut2",
            script = "Actor/Gadget/Q19065TriggerOut2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19065AddedArea")
        }
    }
}
