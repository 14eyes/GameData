require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType
local Config7606 = {}
local data = {NpcId = "7606", Alias = "Npc7606"}
local dailyScheduleData = {}
local tbl = {bornConfigId = 637606000, condition = {sceneId = 0, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 170}
local paramList = {}
local n = 1754
local n2 = 0
paramList[1] = 3
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 5889.441, y = 278.3306, z = 9745.438}, rot = {x = 0, y = 218.3443, z = 0}},
        freestyle = 1240,
        time = 5,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    },
    {
        dummypoint = {pos = {x = 5889.441, y = 278.3306, z = 9745.438}, rot = {x = 0, y = 218.3443, z = 0}},
        freestyle = 1280,
        time = 15,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl3 = {bornConfigId = 637606001, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 170}
local paramList2 = {}
local n3 = 1754
local n4 = 1
paramList2[1] = 3
paramList2[2] = n3
paramList2[3] = n4
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = 5894.662, y = 278.5462, z = 9744.037}, rot = {x = 0, y = 310.5568, z = 0}},
        freestyle = 1240,
        time = 10,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    },
    {
        dummypoint = {pos = {x = 5894.662, y = 278.5462, z = 9744.037}, rot = {x = 0, y = 310.5568, z = 0}},
        freestyle = 1120,
        time = 10,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl3
data.DailyScheduleData = dailyScheduleData
data.TitleData = {titleDatas = {{titleStr = "NPC_TITLE_7606", priority = 0}}}
Config7606.Data = data
return Config7606
