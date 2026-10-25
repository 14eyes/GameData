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
local Config7125 = {}
local data = {NpcId = "7125", Alias = "Npc7125"}
local dailyScheduleData = {refreshDailyActionImmediately = true}
local tbl = {bornConfigId = 607125000, condition = {sceneId = 3, priority = 0}}
local conditionGrp = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7611502
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditionGrp[1] = v
tbl.conditionGrp = conditionGrp

tbl.actionPoints = {
    {
        dummypoint = {pos = {x = 2562.911, y = 346.0756, z = 8984.713}, rot = {x = 0, y = 263.028, z = 0}},
        freestyle = 1120,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl3 = {bornConfigId = 607125000, condition = {sceneId = 0, priority = 0}}
local conditionGrp2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 1
paramList2[1] = 7611502
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditionGrp2[1] = tbl4
tbl3.conditionGrp = conditionGrp2

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = 2562.911, y = 346.0756, z = 8984.713}, rot = {x = 0, y = 263.028, z = 0}},
        action = generalPattern.Hide
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = tbl3
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_7125",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config7125.Data = data
return Config7125
