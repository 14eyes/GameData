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
local Config2471 = {}

local data = {
    NpcId = "2471",
    Alias = "Npc2471",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 442471000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2411.053, y = 341.8975, z = 2366.563}, rot = {x = 0, y = 96.59686, z = 0}},
                    freestyle = 1120,
                    time = 5,
                    lookAtType = focusToPlayerType.OnlyOnce,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 2418.95, y = 341.8975, z = 2379.316}, rot = {x = 0, y = 122.9073, z = 0}},
                    time = 7,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                },
                {
                    dummypoint = {pos = {x = 2424.686, y = 341.8975, z = 2389.4}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = 2433.694, y = 341.8975, z = 2394.132}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Patrol
                },
                {
                    dummypoint = {pos = {x = 2439.343, y = 341.8975, z = 2398.398}, rot = {x = 0, y = 339.5738, z = 0}},
                    time = 7,
                    lookAtType = focusToPlayerType.Ignore,
                    reactOnCollide = reactEnableType.Ignore,
                    reactOnBodyLang = reactEnableType.Ignore,
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 712471000,
            condition = {sceneId = 0, priority = 5},
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
                    dummypoint = {pos = {x = 2404.525, y = 341.8975, z = 2356.252}, rot = {x = 0, y = 40.02893, z = 0}},
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
                titleStr = "NPC_TITLE_2471",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local explicitNameData = {}
local nameDatas = {}
local tbl = {nameStr = "NPC_EXPNAME_2471", priority = 0, hideInBillboard = true}
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
Config2471.Data = data
return Config2471
