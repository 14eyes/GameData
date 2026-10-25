local Q485ClientConfig = {
    MainID = 485,
    ActorAlias = "485",
    SubIDs = {
        q48501 = 48501,
        q48511 = 48511,
        q48509 = 48509,
        q48510 = 48510,
        q48502 = 48502,
        q48503 = 48503,
        q48504 = 48504,
        q48505 = 48505,
        q48506 = 48506,
        q48507 = 48507,
        q48508 = 48508
    },
    AmborData = {
        Ambor = "Ambor",
        AmborScript = "Actor/Quest/Q301/Ambor301",
        AmborID = 1002,
        bornPos3 = sceneData:GetDummyPoint(1015, "Q48511Ambor").pos,
        bornDir3 = sceneData:GetDummyPoint(1015, "Q48511Ambor").rot,
        bornPos = sceneData:GetDummyPoint(1016, "Q48503Ambor").pos,
        bornDir = sceneData:GetDummyPoint(1016, "Q48503Ambor").rot,
        bornPos1 = sceneData:GetDummyPoint(1016, "Q48506Ambor").pos,
        bornDir1 = sceneData:GetDummyPoint(1016, "Q48506Ambor").rot,
        bornPos2 = sceneData:GetDummyPoint(1008, "Q48508Ambor").pos,
        bornDir2 = sceneData:GetDummyPoint(1008, "Q48508Ambor").rot
    },
    WindUpData = {
        Wind1 = "Wind21",
        Wind2 = "Wind22",
        Wind3 = "Wind3",
        Wind4 = "Wind4",
        Wind5 = "Wind5",
        Wind6 = "Wind6",
        Wind7 = "Wind7",
        Wind8 = "Wind8",
        WindID = 40200020
    },
    FirstNarrator = {
        {dialogID = 4851121, audioEvtName = "", duration = 2.5},
        {dialogID = 4851122, audioEvtName = "", duration = 3.5},
        {dialogID = 4851123, audioEvtName = "", duration = 3.5}
    }
}

local firstNarratorWithList = {}
local dialogList = {}
local n = 4851122
local v = 4851123
dialogList[1] = 4851121
dialogList[2] = n
dialogList[3] = v
firstNarratorWithList.dialogList = dialogList
firstNarratorWithList.pauseLen = 10
firstNarratorWithList.resumeLen = 5
firstNarratorWithList.tag = "Cut"
Q485ClientConfig.FirstNarratorWithList = firstNarratorWithList
Q485ClientConfig.NarratorPre = {{dialogID = 4850401, audioEvtName = "", duration = 3.7}}
Q485ClientConfig.NarratorPreWithList = {dialogList = {4850401}, pauseLen = 10, resumeLen = 5, tag = "Tag"}

Q485ClientConfig.Narrator = {
    {dialogID = 4850402, audioEvtName = "", duration = 5.7},
    {dialogID = 4850403, audioEvtName = "", duration = 4.7},
    {dialogID = 4850404, audioEvtName = "", duration = 4.5}
}

local narratorWithList = {}
local tbl = {}
local n2 = 4850403
local n3 = 4850404
tbl[1] = 4850402
tbl[2] = n2
tbl[3] = n3
narratorWithList.dialogList = tbl
narratorWithList.pauseLen = 10
narratorWithList.resumeLen = 5
narratorWithList.tag = "Tag"
Q485ClientConfig.NarratorWithList = narratorWithList

Q485ClientConfig.FinishNarrator = {
    {dialogID = 4850621, audioEvtName = "", duration = 6},
    {dialogID = 4850622, audioEvtName = "", duration = 4.5},
    {dialogID = 4850623, audioEvtName = "", duration = 4}
}

local finishNarratorWithList = {}
local dialogList2 = {}
local n4 = 4850622
local n5 = 4850623
dialogList2[1] = 4850621
dialogList2[2] = n4
dialogList2[3] = n5
finishNarratorWithList.dialogList = dialogList2
finishNarratorWithList.pauseLen = 10
finishNarratorWithList.resumeLen = 5
finishNarratorWithList.tag = "StoryCut"
Q485ClientConfig.FinishNarratorWithList = finishNarratorWithList

Q485ClientConfig.InitRisingWind = {
    Wind1 = "Wind1",
    Wind2 = "Wind2",
    Wind3 = "Wind3",
    Wind4 = "Wind4",
    Wind5 = "Wind5",
    Wind6 = "Wind6",
    Wind7 = "Wind7",
    Wind8 = "Wind8",
    Wind9 = "Wind9",
    WindID = 70710005,
    Wind02ID = 70710005,
    Pos1 = sceneData:GetDummyPoint(1015, "WindVertical101").pos,
    Pos2 = sceneData:GetDummyPoint(1015, "WindVertical102").pos,
    Pos3 = sceneData:GetDummyPoint(1015, "WindVertical103").pos,
    Pos4 = sceneData:GetDummyPoint(1015, "WindVertical104").pos,
    Pos5 = sceneData:GetDummyPoint(1015, "WindVertical105").pos,
    Pos6 = sceneData:GetDummyPoint(1015, "WindVertical106").pos,
    Pos7 = sceneData:GetDummyPoint(1015, "WindVertical107").pos,
    Pos8 = sceneData:GetDummyPoint(1015, "WindVertical108").pos,
    Pos9 = sceneData:GetDummyPoint(1015, "WindVertical109").pos
}

Q485ClientConfig.WindCushionData = {
    WindCushion = "WindCushion",
    WindCushion2 = "WindCushion",
    WindCushion3 = "WindCushion",
    WindCushionID = 70300058,
    WindCushionID2 = 70300067,
    WindCushionID3 = 70300068,
    bornPos = sceneData:GetDummyPoint(1015, "WindCushion01").pos,
    bornDir = sceneData:GetDummyPoint(1015, "WindCushion01").rot,
    bornPos2 = sceneData:GetDummyPoint(1015, "WindCushion02").pos,
    bornDir2 = sceneData:GetDummyPoint(1015, "WindCushion02").rot,
    bornPos3 = sceneData:GetDummyPoint(1015, "WindCushion03").pos,
    bornDir3 = sceneData:GetDummyPoint(1015, "WindCushion03").rot
}

Q485ClientConfig.Flyline1 = {
    sceneData:GetDummyPoint(1015, "Acc01").pos,
    {
        x = sceneData:GetDummyPoint(1015, "Acc01").pos.x + (sceneData:GetDummyPoint(1015, "Acc02").pos.x - sceneData:GetDummyPoint(1015, "Acc01").pos.x) / 3,
        y = sceneData:GetDummyPoint(1015, "Acc01").pos.y + (sceneData:GetDummyPoint(1015, "Acc02").pos.y - sceneData:GetDummyPoint(1015, "Acc01").pos.y) / 3,
        z = sceneData:GetDummyPoint(1015, "Acc01").pos.z + (sceneData:GetDummyPoint(1015, "Acc02").pos.z - sceneData:GetDummyPoint(1015, "Acc01").pos.z) / 3
    },
    {
        x = sceneData:GetDummyPoint(1015, "Acc01").pos.x + (sceneData:GetDummyPoint(1015, "Acc02").pos.x - sceneData:GetDummyPoint(1015, "Acc01").pos.x) / 3 * 2,
        y = sceneData:GetDummyPoint(1015, "Acc01").pos.y + (sceneData:GetDummyPoint(1015, "Acc02").pos.y - sceneData:GetDummyPoint(1015, "Acc01").pos.y) / 3 * 2,
        z = sceneData:GetDummyPoint(1015, "Acc01").pos.z + (sceneData:GetDummyPoint(1015, "Acc02").pos.z - sceneData:GetDummyPoint(1015, "Acc01").pos.z) / 3 * 2
    },
    sceneData:GetDummyPoint(1015, "Acc02").pos
}

Q485ClientConfig.WindData = {
    Wind1 = "Wind11",
    Wind2 = "Wind12",
    WindID = 70710005,
    Pos1 = sceneData:GetDummyPoint(1015, "WindUp01").pos,
    Pos2 = sceneData:GetDummyPoint(1015, "WindUp02").pos
}

return Q485ClientConfig
