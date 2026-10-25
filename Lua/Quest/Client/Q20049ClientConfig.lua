return {
    MainID = 20049,
    ActorAlias = "20049",
    SubIDs = {
        q2004900 = 2004900,
        q2004901 = q2004901,
        q2004902 = q2004902,
        q2004903 = q2004903,
        q2004904 = q2004904,
        q2004905 = q2004905
    },
    NPC1Data = {
        Npc = "Npc146101",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 146101,
        NPCBornPos = sceneData:GetDummyPoint(1009, "Event21900NPCSpawn1").pos,
        NPCBornDir = sceneData:GetDummyPoint(1009, "Event21900NPCSpawn1").rot
    },
    NPC2Data = {
        Npc = "Npc146301",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 146301,
        NPCBornPos = sceneData:GetDummyPoint(3, "Event21900NPCSpawn2").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "Event21900NPCSpawn2").rot
    },
    NarratorData = {
        Story1 = {
            {dialogID = 200490501, audioEvtName = "", duration = 2},
            {dialogID = 200490502, audioEvtName = "", duration = 2},
            {dialogID = 200490503, audioEvtName = "", duration = 2}
        },
        Story2 = {
            {dialogID = 200490701, audioEvtName = "", duration = 2},
            {dialogID = 200490702, audioEvtName = "", duration = 2}
        }
    }
}
