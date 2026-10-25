return {
    MainID = 20001,
    ActorAlias = "20001",
    SubIDs = {
        q2000100 = 2000100,
        q2000101 = q2000101,
        q2000102 = q2000102,
        q2000103 = q2000103,
        q2000103 = q2000104
    },
    NPCData = {
        Npc = "Npc140301",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 140301,
        NPCPos = sceneData:GetDummyPoint(3, "EventTest01").pos,
        NPCDir = sceneData:GetDummyPoint(3, "EventTest01").rot,
        NPCBornPos = sceneData:GetDummyPoint(3, "EventTest01").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "EventTest01").rot
    },
    RoutePoints1 = {
        sceneData:GetDummyPoint(3, "Event_100_WalkPoint01").pos,
        sceneData:GetDummyPoint(3, "Event_100_WalkPoint02").pos
    },
    InterData = {
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 200010201}}}
    }
}
