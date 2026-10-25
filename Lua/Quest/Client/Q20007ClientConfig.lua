return {
    MainID = 20007,
    ActorAlias = "20007",
    SubIDs = {
        q2000701 = 2000701,
        q2000702 = 2000702,
        q2000703 = 2000703,
        q2000704 = 2000704,
        q2000705 = 2000705,
        q2000706 = 2000706,
        q2000707 = 2000707,
        q2000708 = 2000708,
        q2000708 = 2000709
    },
    NPCData = {
        Npc = "Npc153901",
        NPCScript = "Actor/Npc/TempNPC",
        NpcID = 153901,
        NPCBornPos = sceneData:GetDummyPoint(3, "Q20007NPC").pos,
        NPCBornDir = sceneData:GetDummyPoint(3, "Q20007NPC").rot
    },
    Item01ID01 = 100306,
    Item01ID02 = 100307,
    Item01IDPos01 = sceneData:GetDummyPoint(3, "Q20007Item011").pos,
    Item01IDPos02 = sceneData:GetDummyPoint(3, "Q20007Item012").pos,
    Item01IDPos03 = sceneData:GetDummyPoint(3, "Q20007Item013").pos,
    Item02ID = 100308,
    Item02IDPos = sceneData:GetDummyPoint(3, "Q20007Item02").pos,
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q20007NPCWalk01").pos,
        sceneData:GetDummyPoint(3, "Q20007NPCWalk02").pos,
        sceneData:GetDummyPoint(3, "Q20007NPCWalk03").pos,
        sceneData:GetDummyPoint(3, "Q20007NPCWalk04").pos,
        sceneData:GetDummyPoint(3, "Q20007NPCWalk05").pos
    },
    InterData = {
        NoReplyInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 200070201}}}
    }
}
