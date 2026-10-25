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
local Config7031 = {}

local data = {
    NpcId = "7031",
    Alias = "Npc7031",
    DailyScheduleData = {
        {
            bornConfigId = 607031000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1636.252, y = 236.0502, z = 9374.013}, rot = {x = 0, y = 302.9905, z = 0}},
                    freestyle = 4010,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1629.287, y = 236.0235, z = 9376.06}, rot = {x = 0, y = 132.3898, z = 0}},
                    freestyle = 4010,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1624.168, y = 236.0318, z = 9371.295}, rot = {x = 0, y = 133.3878, z = 0}},
                    freestyle = 4010,
                    time = 10,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1627.253, y = 236.039, z = 9365.504}, rot = {x = 0, y = 318.7201, z = 0}},
                    freestyle = 4010,
                    time = 10,
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
local tbl = {validQuestIds = {0}, clueId = 670021, duration = 8, priority = 100}
local dialogDataList = {}
local n = 1016703102
local v = 1016703103
local n2 = 1016703104
dialogDataList[1] = 1016703101
dialogDataList[2] = n
dialogDataList[3] = v
dialogDataList[4] = n2
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7031.Data = data
return Config7031
