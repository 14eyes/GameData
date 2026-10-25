local Q73037ClientConfig = {
    MainID = 73037,
    ActorAlias = "73037",
    SubIDs = {
        q7303702 = 7303702,
        q7303703 = 7303703,
        q7303704 = 7303704,
        q7303705 = 7303705,
        q7303706 = 7303706,
        q7303708 = 7303708,
        q7303709 = 7303709,
        q7303712 = 7303712,
        q7303710 = 7303710,
        q7303711 = 7303711,
        q7303701 = 7303701,
        q7303707 = 7303707,
        q7303713 = 7303713
    },
    Npcs = {
        Npc20646Data = {
            id = 20646,
            alias = "Npc20646",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20647Data = {
            id = 20647,
            alias = "Npc20647",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable_performBoss = {
        {dialogID = 730379907, audioEvtName = "", duration = 4},
        {dialogID = 730379908, audioEvtName = "", duration = 4},
        {dialogID = 730379909, audioEvtName = "", duration = 4},
        {dialogID = 730379910, audioEvtName = "", duration = 4},
        {dialogID = 730379911, audioEvtName = "", duration = 4},
        {dialogID = 730379912, audioEvtName = "", duration = 4},
        {dialogID = 730379913, audioEvtName = "", duration = 4},
        {dialogID = 730379914, audioEvtName = "", duration = 4},
        {dialogID = 730379915, audioEvtName = "", duration = 4},
        {dialogID = 730379916, audioEvtName = "", duration = 4},
        {dialogID = 730379917, audioEvtName = "", duration = 4},
        {dialogID = 730379918, audioEvtName = "", duration = 4},
        {dialogID = 730379919, audioEvtName = "", duration = 4},
        {dialogID = 730379920, audioEvtName = "", duration = 4},
        {dialogID = 730379921, audioEvtName = "", duration = 4},
        {dialogID = 730379922, audioEvtName = "", duration = 4},
        {dialogID = 730379923, audioEvtName = "", duration = 4},
        {dialogID = 730379924, audioEvtName = "", duration = 4},
        {dialogID = 730379925, audioEvtName = "", duration = 4},
        {dialogID = 730379926, audioEvtName = "", duration = 4}
    },
    NarratorTable1 = {
        {dialogID = 730379901, audioEvtName = "", duration = 4},
        {dialogID = 730379902, audioEvtName = "", duration = 7},
        {dialogID = 730379903, audioEvtName = "", duration = 4}
    },
    NarratorTable2 = {
        {dialogID = 730379904, audioEvtName = "", duration = 4},
        {dialogID = 730379905, audioEvtName = "", duration = 7},
        {dialogID = 730379906, audioEvtName = "", duration = 4}
    },
    TextmapId = {"QUEST_Message_Q73037"}
}

local narratorWithId_finalBoss = {
    narratorId = 730379907,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 4
local n2 = 4
local n3 = 4
local n4 = 4
local n5 = 4
local n6 = 4
local n7 = 4
local n8 = 4
local n9 = 4
local n10 = 4
local n11 = 4
local n12 = 4
local n13 = 4
local n14 = 4
local n15 = 4
local n16 = 4
local n17 = 4
local n18 = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
durationList[7] = n5
durationList[8] = n6
durationList[9] = n7
durationList[10] = n8
durationList[11] = n9
durationList[12] = n10
durationList[13] = n11
durationList[14] = n12
durationList[15] = n13
durationList[16] = n14
durationList[17] = n15
durationList[18] = n16
durationList[19] = n17
durationList[20] = n18
narratorWithId_finalBoss.durationList = durationList
datas.NarratorWithId_finalBoss = narratorWithId_finalBoss
Q73037ClientConfig.Datas = datas
return Q73037ClientConfig
