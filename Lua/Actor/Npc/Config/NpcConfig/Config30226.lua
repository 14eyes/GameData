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
local Config30226 = {}

local data = {
    NpcId = "30226",
    Alias = "Npc30226",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -392.4501, y = 220.4076, z = 2449.564}, rot = {x = 0, y = 50, z = 0}},
                    freestyle = 1120,
                    action = generalPattern.Stand
                }
            }
        },
        {
            condition = {sceneId = 3, priority = 1},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 7365201,
                        questState = questState.Finished
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -392.4501, y = 220.4076, z = 2449.564}, rot = {x = 0, y = 50, z = 0}},
                    action = generalPattern.Hide
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 363022600,
            condition = {activityId = 5129, activityCondId = 5129002, isActivityValid = true, sceneId = 3, priority = 2},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5129,
                        activityCondId = 5129002,
                        isActivityValid = true
                    },
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 5129,
                        activityCondId = 5129003,
                        isActivityValid = false
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1898.972, y = 407.3029, z = 3689.668}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_30226",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7365101,
                            questState = questState.UnFinished
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
local n = 73509
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018302260, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5129,
            activityCondId = 5129001,
            isActivityValid = true
        }
    },
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73509, questState = 2}},
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5129,
            activityCondId = 5129002,
            isActivityValid = true
        }
    }
}

local v = {}
local validQuestIds2 = {}
local n2 = 73510
validQuestIds2[1] = 0
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.dialogDataList = {{dialogId = 1018302261, duration = 0, intervalMin = 20, intervalMax = 30}}
v.conditions = {{}, {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73510, questState = 2}}}
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config30226.Data = data
return Config30226
