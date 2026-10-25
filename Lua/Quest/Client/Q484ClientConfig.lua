local Q484ClientConfig = {
    MainID = 484,
    ActorAlias = "484",
    SubIDs = {
        q48401 = 48401,
        q48402 = 48402,
        q48403 = 48403,
        q48404 = 48404,
        q48405 = 48405,
        q48406 = 48406,
        q48407 = 48407,
        q48408 = 48408,
        q48409 = 48409,
        q48410 = 48410,
        q48411 = 48411,
        q48412 = 48412,
        q48413 = 48413,
        q48414 = 48414,
        q48415 = 48415,
        q48416 = 48416,
        q48417 = 48417,
        q48418 = 48418,
        q48419 = 48419,
        q48420 = 48420,
        q48421 = 48421,
        q48422 = 48422,
        q48423 = 48423,
        q48424 = 48424,
        q48425 = 48425,
        q48426 = 48426,
        q48427 = 48427,
        q48428 = 48428,
        q48429 = 48429,
        q48430 = 48430,
        q48431 = 48431,
        q48432 = 48432,
        q48433 = 48433
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        bornPos = sceneData:GetDummyPoint(3, "Q484Ambor").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q484Ambor").rot,
        bornPos2 = sceneData:GetDummyPoint(3, "Q48403Ambor").pos,
        bornDir2 = sceneData:GetDummyPoint(3, "Q48403Ambor").rot,
        bornPos3 = sceneData:GetDummyPoint(3, "Q48405Ambor").pos,
        bornDir3 = sceneData:GetDummyPoint(3, "Q48405Ambor").rot,
        bornPos4 = sceneData:GetDummyPoint(3, "Q48407Ambor").pos,
        bornDir4 = sceneData:GetDummyPoint(3, "Q48407Ambor").rot,
        bornPos5 = sceneData:GetDummyPoint(3, "Q48415Mon3").pos,
        bornDir5 = sceneData:GetDummyPoint(3, "Q48415Mon3").rot,
        bornPos6 = sceneData:GetDummyPoint(3, "Q48422Ambor").pos,
        bornDir6 = sceneData:GetDummyPoint(3, "Q48422Ambor").rot,
        bornPos7 = sceneData:GetDummyPoint(3, "Q48431Ambor").pos,
        bornDir7 = sceneData:GetDummyPoint(3, "Q48431Ambor").rot
    },
    WitnessData = {
        Civil = "Npc1256",
        CivilScript = "Actor/Quest/Q484/Civil",
        CivilID = 1256,
        bornPos = sceneData:GetDummyPoint(3, "Q48413").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q48413").rot
    },
    Civil01Data = {
        Civil = "Civil01",
        CivilScript = "Actor/Quest/Q484/Civil",
        CivilID = 1257,
        bornPos = sceneData:GetDummyPoint(3, "Q48423Civil01").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q48423Civil01").rot
    },
    Civil02Data = {
        Civil = "Civil02",
        CivilScript = "Actor/Quest/Q484/Civil",
        CivilID = 1258,
        bornPos = sceneData:GetDummyPoint(3, "Q48423Civil02").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q48423Civil02").rot
    },
    Civil03Data = {
        Civil = "Civil03",
        CivilScript = "Actor/Quest/Q484/Civil",
        CivilID = 1259,
        bornPos = sceneData:GetDummyPoint(3, "Q48423Civil03").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q48423Civil03").rot
    },
    Clue1Narrator = {
        {dialogID = 4840411, audioEvtName = "", duration = 5},
        {dialogID = 4840412, audioEvtName = "", duration = 5.5},
        {dialogID = 4840413, audioEvtName = "", duration = 3.5},
        {dialogID = 4840414, audioEvtName = "", duration = 4}
    },
    Clue1NarratorWithId = {narratorId = 48404, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
}

local clue1NarratorWithList = {}
local dialogList = {}
local n = 4840412
local v = 4840413
local n2 = 4840414
dialogList[1] = 4840411
dialogList[2] = n
dialogList[3] = v
dialogList[4] = n2
clue1NarratorWithList.dialogList = dialogList
clue1NarratorWithList.pauseLen = 10
clue1NarratorWithList.resumeLen = 5
clue1NarratorWithList.tag = "StoryCut"
Q484ClientConfig.Clue1NarratorWithList = clue1NarratorWithList

Q484ClientConfig.Clue2Narrator = {
    {dialogID = 4840801, audioEvtName = "", duration = 2.5},
    {dialogID = 4840802, audioEvtName = "", duration = 2.5},
    {dialogID = 4840803, audioEvtName = "", duration = 4.5},
    {dialogID = 4840804, audioEvtName = "", duration = 2.3},
    {dialogID = 4840805, audioEvtName = "", duration = 4}
}

Q484ClientConfig.Clue2NarratorWithId = {narratorId = 48408, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
local clue2NarratorWithList = {}
local tbl = {}
local n3 = 4840802
local n4 = 4840803
local n5 = 4840804
local n6 = 4840805
tbl[1] = 4840801
tbl[2] = n3
tbl[3] = n4
tbl[4] = n5
tbl[5] = n6
clue2NarratorWithList.dialogList = tbl
clue2NarratorWithList.pauseLen = 10
clue2NarratorWithList.resumeLen = 5
clue2NarratorWithList.tag = "StoryCut"
Q484ClientConfig.Clue2NarratorWithList = clue2NarratorWithList

Q484ClientConfig.Clue3Narrator = {
    {dialogID = 4840611, audioEvtName = "", duration = 4.3},
    {dialogID = 4840612, audioEvtName = "", duration = 4},
    {dialogID = 4840613, audioEvtName = "", duration = 5.5},
    {dialogID = 4840614, audioEvtName = "", duration = 4.5}
}

Q484ClientConfig.Clue3NarratorWithId = {narratorId = 48406, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
local clue3NarratorWithList = {}
local dialogList2 = {}
local n7 = 4840612
local n8 = 4840613
local n9 = 4840614
dialogList2[1] = 4840611
dialogList2[2] = n7
dialogList2[3] = n8
dialogList2[4] = n9
clue3NarratorWithList.dialogList = dialogList2
clue3NarratorWithList.pauseLen = 10
clue3NarratorWithList.resumeLen = 5
clue3NarratorWithList.tag = "StoryCut"
Q484ClientConfig.Clue3NarratorWithList = clue3NarratorWithList

Q484ClientConfig.AmbushNarrator = {
    {dialogID = 4841601, audioEvtName = "", duration = 4.5},
    {dialogID = 4841602, audioEvtName = "", duration = 4.3},
    {dialogID = 4841603, audioEvtName = "", duration = 4.3},
    {dialogID = 4841604, audioEvtName = "", duration = 4.4},
    {dialogID = 4841605, audioEvtName = "", duration = 4.5},
    {dialogID = 4841606, audioEvtName = "", duration = 4.5}
}

Q484ClientConfig.AmbushNarratorWithId = {narratorId = 48416, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
local ambushNarratorWithList = {}
local dialogList3 = {}
local n10 = 4841602
local n11 = 4841603
local n12 = 4841604
local n13 = 4841605
local n14 = 4841606
dialogList3[1] = 4841601
dialogList3[2] = n10
dialogList3[3] = n11
dialogList3[4] = n12
dialogList3[5] = n13
dialogList3[6] = n14
ambushNarratorWithList.dialogList = dialogList3
ambushNarratorWithList.pauseLen = 10
ambushNarratorWithList.resumeLen = 5
ambushNarratorWithList.tag = "StoryCut"
Q484ClientConfig.AmbushNarratorWithList = ambushNarratorWithList
return Q484ClientConfig
