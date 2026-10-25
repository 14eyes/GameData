return {
    MainID = 11010,
    ActorAlias = "11010",
    SubIDs = {
        q1101001 = 1101001,
        q1101002 = 1101002,
        q1101007 = 1101007,
        q1101008 = 1101008,
        q1101010 = 1101010,
        q1101003 = 1101003,
        q1101009 = 1101009,
        q1101004 = 1101004,
        q1101005 = 1101005,
        q1101006 = 1101006
    },
    Npcs = {
        Npc10265Data = {
            id = 10265,
            alias = "Npc10265",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11010Tok")
        },
        Npc10200Data = {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1033, "Q11010Gongzi")
        },
        Npc10304Data = {
            id = 10304,
            alias = "Npc10304",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11010Daipai")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q11010Paimon")
        },
        Npc2145Data = {
            id = 2145,
            alias = "Npc2145",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(1033, "Q11010Ekaterina")
        }
    },
    Datas = {
        NarratorWithId1 = {narratorId = 1101004, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId2 = {narratorId = 1101003, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId3 = {narratorId = 1101002, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q11010Trigger_ = {
            alias = "Q11010Trigger",
            script = "Actor/Gadget/Q11010Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11010FootprintTrigger")
        },
        Q11010Trigger2_ = {
            alias = "Q11010Trigger2",
            script = "Actor/Gadget/Q11010Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11010FootprintTrigger2")
        },
        Q11010Trigger3_ = {
            alias = "Q11010Trigger3",
            script = "Actor/Gadget/Q11010Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11010FootprintTrigger3")
        }
    }
}
