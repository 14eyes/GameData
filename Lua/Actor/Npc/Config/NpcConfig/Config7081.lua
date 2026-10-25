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
local Config7081 = {}

local data = {
    NpcId = "7081",
    Alias = "Npc7081",
    DailyScheduleData = {
        {
            bornConfigId = 607081000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1670.752, y = 241.2534, z = 9462.377}, rot = {x = 0, y = 287.7717, z = 0}},
                    freestyle = 1130,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local scanClueData = {}

local tbl = {
    validQuestIds = {0},
    clueId = 670008,
    reminderDataList = {{avatarId = 10000122, reminderId = 1003460007}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016708102
local v = 1016708103
dialogDataList[1] = 1016708101
dialogDataList[2] = n
dialogDataList[3] = v
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7081.Data = data
return Config7081
