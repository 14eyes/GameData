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
local Config30402 = {}

local data = {
    NpcId = "30402",
    Alias = "Npc30402",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 383040200,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5140,
                        activityCondId = 5140001,
                        isActivityValid = true
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -761.903, y = 204.083, z = 2741.823}, rot = {x = 0, y = 267.8526, z = 0}},
                    freestyle = 1190,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73525
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018304020, duration = 4, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30402.Data = data
return Config30402
