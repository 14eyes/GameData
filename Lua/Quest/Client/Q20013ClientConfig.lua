return {
    MainID = 20013,
    ActorAlias = "20013",
    SubIDs = {q2001300 = 2001300, q2001301 = 2001301, q2001302 = 2001302, q2001303 = 2001303, q2001303 = 2001304},
    NPCData = {
        Npc = "Npc141301",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 141301,
        bubble = 4611001,
        NPCPos = sceneData:GetDummyPoint(3, "Event_20503").pos,
        NPCDir = sceneData:GetDummyPoint(3, "Event_20503").rot,
        NPCBornPos = sceneData:GetDummyPoint(3, "Event_20503").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "Event_20503").rot
    },
    RoutePoints1 = {
        sceneData:GetDummyPoint(3, "Event_20503_01").pos,
        sceneData:GetDummyPoint(3, "Event_20503_02").pos,
        sceneData:GetDummyPoint(3, "Event_20503_03").pos,
        sceneData:GetDummyPoint(3, "Event_20503_04").pos,
        sceneData:GetDummyPoint(3, "Event_20503_05").pos,
        sceneData:GetDummyPoint(3, "Event_20503_06").pos,
        sceneData:GetDummyPoint(3, "Event_20503_07").pos
    },
    InterData = {
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 200130201}}}
    }
}
