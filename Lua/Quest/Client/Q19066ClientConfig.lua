return {
    MainID = 19066,
    ActorAlias = "19066",
    SubIDs = {
        q1906601 = 1906601,
        q1906612 = 1906612,
        q1906611 = 1906611,
        q1906602 = 1906602,
        q1906603 = 1906603,
        q1906604 = 1906604,
        q1906605 = 1906605,
        q1906606 = 1906606,
        q1906607 = 1906607,
        q1906608 = 1906608,
        q1906609 = 1906609,
        q1906610 = 1906610
    },
    Npcs = {
        Npc1027DataMid = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19066MinecraftNoel")
        },
        Npc1027DataHE = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19066HENoel")
        },
        Npc11003DataMid = {
            id = 11003,
            alias = "Npc11003",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19066Minecraft3")
        },
        Npc11003DataHE = {
            id = 11003,
            alias = "Npc11003",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19066HEKnight")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q19066AddedPaimon")
        }
    },
    Datas = {
        TransmitPoint = {point_id = 1, scene_id = 3, pos = "Q19066HEPlayer"},
        NarratorStartPaimon = {narratorId = 1906601, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorRockOn = {narratorId = 1906604, pauseLen = 10, resumeLen = 5, tag = "Story"},
        TransmitPoint2 = {point_id = 2, scene_id = 3, pos = "Q19066FocusCamera"},
        Q19066Trigger_ = {
            alias = "Q19066Trigger",
            script = "Actor/Gadget/Q19066Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19066Minecraft1")
        },
        Q19066TriggerOut_ = {
            alias = "Q19066TriggerOut",
            script = "Actor/Gadget/Q19066TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19066AddedArea")
        },
        Q19066TriggerOut2_ = {
            alias = "Q19066TriggerOut2",
            script = "Actor/Gadget/Q19066TriggerOut2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19066AddedArea")
        }
    }
}
