local Q73676ClientConfig = {
    MainID = 73676,
    ActorAlias = "73676",
    SubIDs = {q7367601 = 7367601, q7367602 = 7367602, q7367603 = 7367603, q7367605 = 7367605, q7367604 = 7367604},
    Npcs = {
        Npc12760Data = {
            id = 12760,
            alias = "Npc12760",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12761Data = {
            id = 12761,
            alias = "Npc12761",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12762Data = {
            id = 12762,
            alias = "Npc12762",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local fightingKaiche = {narratorId = 7367601, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
local n2 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
fightingKaiche.durationList = durationList
datas.FightingKaiche = fightingKaiche
Q73676ClientConfig.Datas = datas
return Q73676ClientConfig
