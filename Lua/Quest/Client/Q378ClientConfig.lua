return {
    MainID = 378,
    ActorAlias = "378",
    SubIDs = {q37801 = 37801, q37802 = 37802, q37803 = 37803, q37804 = 37804, q37805 = 37805},
    BarbaraData = {
        Barbara = "Barbara",
        BarbaraScript = "Actor/Quest/Q413/Barbara",
        BarbaraID = 1008,
        bornPos = sceneData:GetDummyPoint(3, "Q378Babara").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q378Babara").rot
    },
    QinData = {
        Qin = "Qin",
        QinScript = "Actor/Quest/Q411/Qin",
        QinID = 1006,
        bornPos1 = sceneData:GetDummyPoint(3, "Q378Qin1").pos,
        bornDir1 = sceneData:GetDummyPoint(3, "Q378Qin1").rot,
        bornPos2 = sceneData:GetDummyPoint(3, "Q378Qin2").pos,
        bornDir2 = sceneData:GetDummyPoint(3, "Q378Qin2").rot,
        followPos1 = sceneData:GetDummyPoint(3, "Q378QinWait1").pos,
        followPos2 = sceneData:GetDummyPoint(3, "Q378QinWait2").pos,
        followPos3 = sceneData:GetDummyPoint(3, "Q378QinWait3").pos
    },
    RoutePoints = {
        sceneData:GetDummyPoint(3, "Q378QinWait1").pos,
        sceneData:GetDummyPoint(3, "Q378QinWait2").pos,
        sceneData:GetDummyPoint(3, "Q378QinWait3").pos,
        sceneData:GetDummyPoint(3, "Q378QinWait4").pos,
        sceneData:GetDummyPoint(3, "Q378Qin2").pos
    },
    PlayerBackInter = {{{type = InteractionType.DIALOG, dialogType = DialogType.LOCK_FRAME, dialogID = 3780220}}},
    FollowLen = 10,
    FailLen = 55,
    NarratorFlow = {
        {dialogID = 3780201, audioEvtName = "", duration = 3.5},
        {dialogID = 3780202, audioEvtName = "", duration = 4.5},
        {dialogID = 3780203, audioEvtName = "", duration = 6},
        {dialogID = 3780204, audioEvtName = "", duration = 2},
        {dialogID = 3780205, audioEvtName = "", duration = 5},
        {dialogID = 3780206, audioEvtName = "", duration = 2}
    },
    NarratorWarning = {{dialogID = 3780220, audioEvtName = "", duration = 6}},
    NarratorStayWarning = {{dialogID = 3780220, audioEvtName = "", duration = 6}}
}
