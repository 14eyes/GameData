local Q74023ClientConfig = {
    MainID = 74023,
    ActorAlias = "74023",
    SubIDs = {q7402301 = 7402301, q7402304 = 7402304, q7402302 = 7402302, q7402303 = 7402303},
    Npcs = {
        Npc21035Data = {
            id = 21035,
            alias = "Npc21035",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21036Data = {
            id = 21036,
            alias = "Npc21036",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21066Data = {
            id = 21066,
            alias = "Npc21066",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 740239901,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q74023ClientConfig.Datas = datas
return Q74023ClientConfig
