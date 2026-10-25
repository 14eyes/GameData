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
local Config7079 = {}

local data = {
    NpcId = "7079",
    Alias = "Npc7079",
    DailyScheduleData = {
        {
            bornConfigId = 607079000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1654.909, y = 227.9837, z = 9492.501}, rot = {x = 0, y = 150.9802, z = 0}},
                    freestyle = 1230,
                    time = 10,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1658.98, y = 227.9902, z = 9496.71}, rot = {x = 0, y = 138.6271, z = 0}},
                    freestyle = 1120,
                    time = 10,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1661.051, y = 227.9907, z = 9501.513}, rot = {x = 0, y = 305.9059, z = 0}},
                    freestyle = 1230,
                    time = 10,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 1661.084, y = 227.9763, z = 9494.838}, rot = {x = 0, y = 181.3874, z = 0}},
                    action = generalPattern.Patrol
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_7079",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local scanClueData = {}

local tbl = {
    validQuestIds = {0},
    clueId = 670012,
    reminderDataList = {{avatarId = 10000124, reminderId = 1003640003}},
    duration = 8,
    priority = 100
}

local dialogDataList = {}
local n = 1016707902
local v = 1016707903
local n2 = 1016707904
dialogDataList[1] = 1016707901
dialogDataList[2] = n
dialogDataList[3] = v
dialogDataList[4] = n2
tbl.dialogDataList = dialogDataList
scanClueData[1] = tbl
data.ScanClueData = scanClueData
Config7079.Data = data
return Config7079
