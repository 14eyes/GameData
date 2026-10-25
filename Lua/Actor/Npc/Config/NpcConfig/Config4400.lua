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
local Config4400 = {}

local data = {
    NpcId = "4400",
    Alias = "Npc4400",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                        questGlobalVarId = 302110,
                        questGlobalVarValue = 1,
                        questGlobalVarOperate = compareOperation.Equal
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -2028.155, y = 299.9475, z = 4100.398}, rot = {x = 0, y = 333.6927, z = 0}},
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 714400000,
            condition = {sceneId = 0, priority = 3},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2051,
                        activityCondId = 2051001,
                        isActivityValid = true
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2446.878, y = 343.059, z = 2407.235}, rot = {x = 0, y = 260.5886, z = 0}},
                    freestyle = 1060,
                    time = 7,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    moveType = actorMoveType.Run
                },
                {
                    dummypoint = {pos = {x = 2456.286, y = 343.059, z = 2409.339}, rot = {x = 0, y = 171.7797, z = 0}},
                    freestyle = 1060,
                    time = 5,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    moveType = actorMoveType.Run
                },
                {
                    dummypoint = {pos = {x = 2460.917, y = 343.059, z = 2414.752}, rot = {x = 0, y = 231.0629, z = 0}},
                    freestyle = 1060,
                    time = 7,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand,
                    moveType = actorMoveType.Run
                }
            }
        }
    }
}

local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_4400", priority = 0, hideInBillboard = true}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 7154601
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
nameDatas[1] = tbl
explicitNameData.nameDatas = nameDatas
data.ExplicitNameData = explicitNameData

data.NahidaNarratorData = {
    {
        validQuestIds = {0},
        priority = 10,
        dialogDataList = {{dialogId = 1018440000, duration = 0, intervalMin = 20, intervalMax = 30}}
    }
}

Config4400.Data = data
return Config4400
