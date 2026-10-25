local Q73049ClientConfig = {
    MainID = 73049,
    ActorAlias = "73049",
    SubIDs = {
        q7304929 = 7304929,
        q7304930 = 7304930,
        q7304931 = 7304931,
        q7304932 = 7304932,
        q7304933 = 7304933,
        q7304934 = 7304934,
        q7304935 = 7304935,
        q7304936 = 7304936,
        q7304901 = 7304901,
        q7304902 = 7304902,
        q7304903 = 7304903,
        q7304904 = 7304904,
        q7304905 = 7304905,
        q7304908 = 7304908,
        q7304909 = 7304909,
        q7304910 = 7304910,
        q7304911 = 7304911,
        q7304912 = 7304912,
        q7304913 = 7304913,
        q7304914 = 7304914,
        q7304915 = 7304915,
        q7304916 = 7304916,
        q7304917 = 7304917,
        q7304927 = 7304927,
        q7304928 = 7304928,
        q7304920 = 7304920,
        q7304918 = 7304918,
        q7304919 = 7304919,
        q7304921 = 7304921,
        q7304922 = 7304922,
        q7304923 = 7304923,
        q7304906 = 7304906,
        q7304924 = 7304924,
        q7304925 = 7304925,
        q7304926 = 7304926,
        q7304907 = 7304907
    },
    Npcs = {
        Npc20712Data = {
            id = 20712,
            alias = "Npc20712",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20713Data = {
            id = 20713,
            alias = "Npc20713",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4066Data = {
            id = 4066,
            alias = "Npc4066",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    RoutePointsData = {
        {x = -1072.549, y = 219.613, z = 3860.751},
        {x = -1067.016, y = 218.865, z = 3862.079},
        {x = -1063.653, y = 217.332, z = 3864.867},
        {x = -1062.342, y = 216.0, z = 3868.164},
        {x = -1062.569, y = 213.954, z = 3872.489},
        {x = -1060.048, y = 212.269, z = 3876.748},
        {x = -1059.579, y = 210.878, z = 3881.195},
        {x = -1061.727, y = 209.964, z = 3885.758},
        {x = -1060.927, y = 208.976, z = 3891.051}
    },
    NarratorTable = {{dialogID = 730499901, audioEvtName = "", duration = 5}},
    fenweikaiche = {{dialogID = 730499902, audioEvtName = "", duration = 6}},
    NarratorTable1 = {{dialogID = 730499903, audioEvtName = "", duration = 3}},
    NarratorTable2 = {{dialogID = 730499904, audioEvtName = "", duration = 3}},
    NarratorTable3 = {{dialogID = 730499905, audioEvtName = "", duration = 5}},
    NarratorTable4 = {{dialogID = 730499910, audioEvtName = "", duration = 4}},
    NarratorTable5 = {
        {dialogID = 730499908, audioEvtName = "", duration = 3},
        {dialogID = 730499909, audioEvtName = "", duration = 3}
    },
    NarratorTable6_light = {
        {dialogID = 730499911, audioEvtName = "", duration = 5},
        {dialogID = 730499912, audioEvtName = "", duration = 6}
    },
    NewVector3 = sceneData:GetDummyPoint(3, "Q7304905_N1005"),
    NarratorTable7_getin = {
        {dialogID = 730499913, audioEvtName = "", duration = 3},
        {dialogID = 730499914, audioEvtName = "", duration = 3}
    },
    NarratorWithId_dujin = {
        narratorId = 730499905,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {5}
    }
}

local narratorWithId_getin = {narratorId = 730499913, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 7
local n2 = 4
local n3 = 6
local n4 = 5
local n5 = 3
local n6 = 5
durationList[1] = 5
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
durationList[7] = n5
durationList[8] = n6
narratorWithId_getin.durationList = durationList
datas.NarratorWithId_getin = narratorWithId_getin
Q73049ClientConfig.Datas = datas
return Q73049ClientConfig
