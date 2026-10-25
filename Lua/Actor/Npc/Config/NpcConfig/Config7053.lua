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
local Config7053 = {}

local data = {
    NpcId = "7053",
    Alias = "Npc7053",
    DailyScheduleData = {
        {
            bornConfigId = 607053000,
            condition = {sceneId = 3, priority = 2},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1643.399, y = 227.7639, z = 9470.019}, rot = {x = 0, y = 107.1004, z = 0}},
                    freestyle = 1122,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Ignore,
                    reactOnBodyLang = reactEnableType.Ignore,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 607053001,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1735.895, y = 259.0412, z = 9850.173}, rot = {x = 0, y = 271.6639, z = 0}},
                    freestyle = 1120,
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
    clueId = 670007,
    reminderDataList = {{avatarId = 10000122, reminderId = 1003460006}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016705302
local v = 1016705303
dialogDataList[1] = 1016705301
dialogDataList[2] = n
dialogDataList[3] = v
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7053.Data = data
return Config7053
