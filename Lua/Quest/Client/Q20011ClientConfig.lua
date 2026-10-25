return {
    MainID = 20011,
    ActorAlias = "20011",
    SubIDs = {
        q2001100 = 2001100,
        q2001101 = q2001101,
        q2001102 = q2001102,
        q2001103 = q2001103,
        q2001103 = q2001104
    },
    NPCData = {
        Npc = "Npc140801",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 140801,
        bubble = 4611001,
        NPCPos = sceneData:GetDummyPoint(3, "Event_20501").pos,
        NPCDir = sceneData:GetDummyPoint(3, "Event_20501").rot,
        NPCBornPos = sceneData:GetDummyPoint(3, "Event_20501").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "Event_20501").rot
    },
    RoutePoints1 = {sceneData:GetDummyPoint(3, "Event_20501_01").pos, sceneData:GetDummyPoint(3, "Event_20501_02").pos},
    InterData = {
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 200110201}}}
    }
}
