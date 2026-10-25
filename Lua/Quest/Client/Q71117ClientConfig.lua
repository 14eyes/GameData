local Q71117ClientConfig = {
    MainID = 71117,
    ActorAlias = "71117",
    SubIDs = {q7111701 = 7111701, q7111702 = 7111702, q7111703 = 7111703},
    Npcs = {
        Npc21312Data = {
            id = 21312,
            alias = "Npc21312",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7111701 = {
    narratorId = 7111701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7111701.durationList = durationList
datas.Narrator_7111701 = narrator_7111701
Q71117ClientConfig.Datas = datas
return Q71117ClientConfig
