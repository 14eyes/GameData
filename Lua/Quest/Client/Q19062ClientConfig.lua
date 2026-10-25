return {
    MainID = 19062,
    ActorAlias = "19062",
    SubIDs = {
        q1906201 = 1906201,
        q1906204 = 1906204,
        q1906205 = 1906205,
        q1906206 = 1906206,
        q1906207 = 1906207,
        q1906208 = 1906208,
        q1906209 = 1906209,
        q1906210 = 1906210,
        q1906211 = 1906211,
        q1906212 = 1906212,
        q1906213 = 1906213,
        q1906202 = 1906202,
        q1906203 = 1906203
    },
    Npcs = {
        Npc1027DataGate = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeGateNoel")
        },
        Npc11001DataGate = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeGateLiar")
        },
        Npc143901Data = {
            id = 143901,
            alias = "Npc143901",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeGateLaurence")
        },
        Npc143501Data = {
            id = 143501,
            alias = "Npc143501",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "NpcFemaleInsomniaStand11Born")
        },
        Npc1027DataIn = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeInNoel")
        },
        Npc1027DataSouvenir = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062SouvenirNoel")
        },
        Npc11001DataIn = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeInLiar")
        },
        Npc1027DataWine = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062WineNoel")
        },
        Npc11001DataWine = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062WineLiar")
        },
        Npc1027DataFood = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062FoodNoel")
        },
        Npc11001DataFood = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062FoodLiar")
        },
        Npc11001DataOut = {
            id = 11001,
            alias = "Npc11001",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q19062AfraidOutLiar")
        },
        Npc143701Data = {
            id = 143701,
            alias = "Npc143701",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062MengdeGateSwan")
        },
        Npc1027DataFin = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19062HENoelAdded")
        }
    },
    Datas = {
        TransmitPointIn = {point_id = 1, scene_id = 3, pos = "Q19062MengdeInPlayer"},
        TransmitPointWine = {point_id = 2, scene_id = 3, pos = "Q19062WinePlayer"},
        TransmitPointFood = {point_id = 3, scene_id = 3, pos = "Q19062FoodPlayer"},
        TransmitPointOut = {point_id = 4, scene_id = 3, pos = "Q19062AfraidOutPlayer"},
        NarratorGateEntrance = {narratorId = 1906203, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWineEnd = {narratorId = 1906205, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorFoodEnd = {narratorId = 1906207, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorBE = {narratorId = 1906212, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q19062Trigger_ = {
            alias = "Q19062Trigger",
            script = "Actor/Gadget/Q19062Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19062GateIndicator")
        },
        Q19062TriggerInLiar_ = {
            alias = "Q19062TriggerInLiar",
            script = "Actor/Gadget/Q19062TriggerInLiar",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19062AfraidOutLiar")
        }
    }
}
