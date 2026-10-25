return {
    MainID = 10501,
    ActorAlias = "10501",
    SubIDs = {
        q1050101 = 1050101,
        q1050113 = 1050113,
        q1050102 = 1050102,
        q1050114 = 1050114,
        q1050103 = 1050103,
        q1050104 = 1050104,
        q1050110 = 1050110,
        q1050111 = 1050111,
        q1050112 = 1050112,
        q1050105 = 1050105,
        q1050106 = 1050106,
        q1050107 = 1050107,
        q1050108 = 1050108,
        q1050109 = 1050109
    },
    Npcs = {
        Npc10095Data2 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501MonaSpawn2")
        },
        Npc10095Data = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501MonaSpawn")
        },
        Npc220601Data = {
            id = 220601,
            alias = "Npc220601",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501XiuhuaSpawn")
        },
        Npc10096Data = {
            id = 10096,
            alias = "Npc10096",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501ThoarderSpawn")
        },
        Npc10097Data = {
            id = 10097,
            alias = "Npc10097",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501ThoarderSpawn2")
        },
        Npc10098Data = {
            id = 10098,
            alias = "Npc10098",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501ThoarderSpawn6")
        },
        Npc10113Data = {
            id = 10113,
            alias = "Npc10113",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10501ThoarderSpawn3")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 1050113, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q10501Trigger_ = {
            alias = "Q10501Trigger",
            script = "Actor/Gadget/Q10501Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q10501MonaFight")
        }
    }
}
