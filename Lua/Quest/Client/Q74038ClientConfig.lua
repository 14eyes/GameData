local Q74038ClientConfig = {
    MainID = 74038,
    ActorAlias = "74038",
    SubIDs = {
        q7403801 = 7403801,
        q7403803 = 7403803,
        q7403804 = 7403804,
        q7403818 = 7403818,
        q7403805 = 7403805,
        q7403806 = 7403806,
        q7403809 = 7403809,
        q7403810 = 7403810,
        q7403811 = 7403811,
        q7403812 = 7403812,
        q7403813 = 7403813,
        q7403802 = 7403802,
        q7403814 = 7403814,
        q7403807 = 7403807,
        q7403815 = 7403815,
        q7403816 = 7403816,
        q7403817 = 7403817,
        q7403808 = 7403808
    },
    Npcs = {
        Npc5323Data = {
            id = 5323,
            alias = "Npc5323",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21053Data = {
            id = 21053,
            alias = "Npc21053",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21083Data = {
            id = 21083,
            alias = "Npc21083",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21054Data = {
            id = 21054,
            alias = "Npc21054",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5305Data = {
            id = 5305,
            alias = "Npc5305",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    paim_7403814 = {
        narratorId = 740389901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    },
    paim_7403815 = {
        narratorId = 740389801,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {5}
    }
}

local paim_7403810 = {
    narratorId = 740389601,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 4
durationList[1] = 5
durationList[2] = n
durationList[3] = v
paim_7403810.durationList = durationList
datas.paim_7403810 = paim_7403810

local paim_7403897 = {
    narratorId = 740389701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 5
tbl[1] = 3
tbl[2] = n2
paim_7403897.durationList = tbl
datas.paim_7403897 = paim_7403897

local paim_7403898 = {
    narratorId = 740389801,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n3 = 5
local n4 = 5
durationList2[1] = 4
durationList2[2] = n3
durationList2[3] = n4
paim_7403898.durationList = durationList2
datas.paim_7403898 = paim_7403898
Q74038ClientConfig.Datas = datas
return Q74038ClientConfig
