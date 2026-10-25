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
local Config31102 = {}

local data = {
    NpcId = "31102",
    Alias = "Npc31102",
    DailyScheduleData = {
        {
            transTeleport = true,
            bornConfigId = 713110200,
            condition = {sceneId = 0, priority = 0},
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
                    dummypoint = {pos = {x = 2422.138, y = 341.8975, z = 2380.198}, rot = {x = 0, y = 29.26745, z = 0}},
                    time = 5,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 2423.944, y = 341.8975, z = 2382.659}, rot = {x = 0, y = 40.47582, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = 2427.469, y = 341.8975, z = 2386.159}, rot = {x = 0, y = 138.2579, z = 0}},
                    time = 4,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 2439.346, y = 341.8975, z = 2393.374}, rot = {x = 0, y = 162.0252, z = 0}},
                    time = 7,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 2424.016, y = 341.8975, z = 2385.544}, rot = {x = 0, y = 276.1095, z = 0}},
                    time = 5,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_31102", priority = 0, hideInBillboard = true}
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
Config31102.Data = data
return Config31102
