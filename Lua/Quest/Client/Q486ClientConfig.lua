return {
    MainID = 486,
    ActorAlias = "486",
    SubIDs = {
        q48601 = 48601,
        q48602 = 48602,
        q48603 = 48603,
        q48604 = 48604,
        q48605 = 48605,
        q48606 = 48606,
        q48607 = 48607,
        q48608 = 48608,
        q48608 = 48609,
        q48608 = 48610
    },
    QuestData = {
        camPos1 = sceneData:GetDummyPoint(3, "Q48601lookat").pos,
        camDir1 = sceneData:GetDummyPoint(3, "Q48601lookat").rot,
        PlayerPos1 = sceneData:GetDummyPoint(1008, "Q48608Player").pos,
        PlayerDir1 = sceneData:GetDummyPoint(1008, "Q48608Player").rot
    },
    KaeyaData = {
        Alias = "Gaia",
        Script = "Actor/Quest/Q301/Gaia301",
        ID = 1004,
        KaeyaPos = sceneData:GetDummyPoint(3, "Q48610Kaeya").pos,
        KaeyaDir = sceneData:GetDummyPoint(3, "Q48610Kaeya").rot,
        KaeyaPos1 = sceneData:GetDummyPoint(3, "Q48610KaeyaLeave").pos,
        KaeyaDir1 = sceneData:GetDummyPoint(3, "Q48610KaeyaLeave").rot
    },
    BarbaraData = {
        Alias = "Barbara",
        Script = "Actor/Quest/Q413/Barbara",
        ID = 1008,
        BabaraPos1 = sceneData:GetDummyPoint(1008, "Q48608Babara").pos,
        BabaraDir1 = sceneData:GetDummyPoint(1008, "Q48608Babara").rot
    },
    QinData = {
        Alias = "Qin",
        Script = "Actor/Quest/Q411/Qin",
        ID = 1006,
        QinPos1 = sceneData:GetDummyPoint(1004, "Q48607Qin").pos,
        QinDir1 = sceneData:GetDummyPoint(1004, "Q48607Qin").rot
    },
    BarNpcData = {
        Alias = "NPC10030",
        Script = "Actor/Npc/TempNPC",
        ID = 10030,
        NPCPos1 = sceneData:GetDummyPoint(3, "Q48603Npc").pos,
        NPCDir1 = sceneData:GetDummyPoint(3, "Q48603Npc").rot
    },
    CatNpcData = {
        Alias = "CatNpc",
        Script = "Actor/Npc/TempNPC",
        ID = 10031,
        NPCPos1 = sceneData:GetDummyPoint(3, "Q48605NPC").pos,
        NPCDir1 = sceneData:GetDummyPoint(3, "Q48605NPC").rot,
        NPCPos2 = sceneData:GetDummyPoint(3, "Q48605NpcLeave").pos,
        NPCDir2 = sceneData:GetDummyPoint(3, "Q48605NpcLeave").rot,
        NPCPos3 = sceneData:GetDummyPoint(3, "Q48701NPC").pos,
        NPCDir3 = sceneData:GetDummyPoint(3, "Q48701NPC").rot
    },
    NarratorData = {
        Story1 = {
            {dialogID = 4860200, audioEvtName = "", duration = 4},
            {dialogID = 4860201, audioEvtName = "", duration = 4}
        }
    },
    PaimonData = {Alias = "Paimon", Script = "Actor/Quest/Q352/Paimon", ID = 1005}
}
