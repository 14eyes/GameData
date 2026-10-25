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
local Config7068 = {}

local data = {
    NpcId = "7068",
    Alias = "Npc7068",
    DailyScheduleData = {
        {
            bornConfigId = 607068000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1657.945, y = 227.8114, z = 9472.281}, rot = {x = 0, y = 358.6477, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Ignore,
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
    clueId = 670015,
    reminderDataList = {{avatarId = 10000124, reminderId = 1003640006}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016706802
local v = 1016706803
dialogDataList[1] = 1016706801
dialogDataList[2] = n
dialogDataList[3] = v
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7068.Data = data
return Config7068
