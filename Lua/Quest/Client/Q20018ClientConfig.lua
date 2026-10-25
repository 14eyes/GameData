return {
    MainID = 20018,
    ActorAlias = "20018",
    SubIDs = {
        q2001801 = 2001801,
        q2001802 = 2001802,
        q2001803 = 2001803,
        q2001804 = 2001804,
        q2001805 = 2001805,
        q2001806 = 2001806,
        q2001807 = 2001807,
        q2001808 = 2001808,
        q2001808 = 2001809
    },
    NPCData = {
        Npc = "Npc157101",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 157101,
        NPCBornPos = sceneData:GetDummyPoint(3, "Q20018NPC").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "Q20018NPC").rot
    },
    Item01ID01 = 100306,
    Item01ID02 = 100307,
    Item01IDPos01 = sceneData:GetDummyPoint(3, "Q20018Item011").pos,
    Item01IDPos02 = sceneData:GetDummyPoint(3, "Q20018Item012").pos,
    Item01IDPos03 = sceneData:GetDummyPoint(3, "Q20018Item013").pos,
    Item02ID = 100308,
    Item02IDPos = sceneData:GetDummyPoint(3, "Q20018Item02").pos,
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q20018NPCWalk01").pos,
        sceneData:GetDummyPoint(3, "Q20018NPCWalk02").pos,
        sceneData:GetDummyPoint(3, "Q20018NPCWalk03").pos,
        sceneData:GetDummyPoint(3, "Q20018NPCWalk04").pos,
        sceneData:GetDummyPoint(3, "Q20018NPCWalk05").pos
    },
    InterData = {
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 200180201}}}
    }
}
