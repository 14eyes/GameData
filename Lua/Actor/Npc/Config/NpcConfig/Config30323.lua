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
local Config30323 = {}

local data = {
    NpcId = "30323",
    Alias = "Npc30323",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 353032300,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1635.646, y = 200.7216, z = 2571.345}, rot = {x = 0, y = 330, z = 0}},
                    freestyle = 1090,
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 353032300,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5120,
                        activityCondId = 5120013,
                        isActivityValid = true
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1636.392, y = 200.775, z = 2567.411}, rot = {x = 0, y = 280, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 473032300,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 2},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5199,
                        activityCondId = 5199009,
                        isActivityValid = true
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2206.778, y = 230.0885, z = -800.2169}, rot = {x = 0, y = 192, z = 0}},
                    freestyle = 1190,
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
                titleStr = "NPC_TITLE_30323",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73507
local v = 73508
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 201
tbl.dialogDataList = {{dialogId = 1018303230, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5120,
            activityCondId = 5120002,
            isActivityValid = true
        }
    }
}

local tbl2 = {
    validQuestIds = {0},
    priority = 299,
    dialogDataList = {{dialogId = 1018303231, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 5120,
                activityCondId = 5120013,
                isActivityValid = true
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config30323.Data = data
return Config30323
