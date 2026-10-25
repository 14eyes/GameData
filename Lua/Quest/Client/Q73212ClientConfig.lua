local Q73212ClientConfig = {
    MainID = 73212,
    ActorAlias = "73212",
    SubIDs = {
        q7321201 = 7321201,
        q7321202 = 7321202,
        q7321203 = 7321203,
        q7321204 = 7321204,
        q7321214 = 7321214,
        q7321215 = 7321215,
        q7321213 = 7321213,
        q7321205 = 7321205,
        q7321212 = 7321212,
        q7321206 = 7321206,
        q7321207 = 7321207,
        q7321208 = 7321208,
        q7321216 = 7321216,
        q7321209 = 7321209,
        q7321210 = 7321210,
        q7321211 = 7321211
    },
    Npcs = {
        Npc20932Data = {
            id = 20932,
            alias = "Npc20932",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId02 = {
    narratorId = 7321201,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 6
durationList[1] = 6
durationList[2] = n
narratorWithId02.durationList = durationList
datas.NarratorWithId02 = narratorWithId02
Q73212ClientConfig.Datas = datas
return Q73212ClientConfig
