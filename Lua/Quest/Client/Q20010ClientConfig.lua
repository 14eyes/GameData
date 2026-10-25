return {
    MainID = 20010,
    ActorAlias = "20010",
    SubIDs = {
        q2001001 = 2001001,
        q2001002 = 2001002,
        q2001003 = 2001003,
        q2001004 = 2001004,
        q2001005 = 2001005,
        q2001006 = 2001006,
        q2001007 = 2001007,
        q2001008 = 2001008,
        q2001009 = 2001009,
        q2001010 = 2001010,
        q2001011 = 2001011,
        q2001008 = 2001012,
        q2001009 = 2001013,
        q2001010 = 2001014,
        q2001011 = 2001015
    },
    NPCData = {
        Npc = "Npc156501",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 156501,
        NPCPos1 = sceneData:GetDummyPoint(3, "Q20010NPC01").pos,
        NPCDir1 = sceneData:GetDummyPoint(3, "Q20010NPC01").rot,
        NPCPos2 = sceneData:GetDummyPoint(3, "Q20010NPC05").pos,
        NPCDir2 = sceneData:GetDummyPoint(3, "Q20010NPC05").rot,
        NPCDir3 = sceneData:GetDummyPoint(3, "Q20010NPC04").rot
    },
    HiliData = {
        Npc = "Npc20025",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 20025,
        NPCPos = sceneData:GetDummyPoint(3, "Q20010Hili01").pos,
        NPCDir = sceneData:GetDummyPoint(3, "Q20010Hili01").rot
    },
    PlayerData = {
        PlayerPos = sceneData:GetDummyPoint(3, "Q20010PlayerPos").pos,
        PlayerDir = sceneData:GetDummyPoint(3, "Q20010PlayerPos").rot
    },
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q20010NPC02").pos,
        sceneData:GetDummyPoint(3, "Q20010NPC03").pos,
        sceneData:GetDummyPoint(3, "Q20010NPC04").pos
    },
    RoutePoints1 = {
        sceneData:GetDummyPoint(3, "Q20010NPCLeave01").pos,
        sceneData:GetDummyPoint(3, "Q20010NPCLeave02").pos,
        sceneData:GetDummyPoint(3, "Q20010NPCLeave03").pos,
        sceneData:GetDummyPoint(3, "Q20010NPCLeave04").pos
    },
    NarratorData = {Story1 = {{dialogID = 200101101, audioEvtName = "", duration = 5}}}
}
