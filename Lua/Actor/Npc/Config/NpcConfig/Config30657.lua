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
local Config30657 = {}

local data = {
    NpcId = "30657",
    Alias = "Npc30657",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 513065700,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1954.691, y = 202.3295, z = 2498.521}, rot = {x = 0, y = 116.9711, z = 0}},
                    freestyle = 1230,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_30657",
                priority = 0,
                conditions = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034001,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73354
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018306570, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 2034,
            activityCondId = 2034001,
            isActivityValid = true
        }
    }
}

nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30657.Data = data
return Config30657
