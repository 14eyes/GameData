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
local Config1449 = {}
local data = {NpcId = "1449", Alias = "Npc1449"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = 2195.511, y = 209.99, z = -878.7499}, rot = {x = 0, y = 186.1114, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2196.681, y = 209.99, z = -887.309}, rot = {x = 0, y = 156.9705, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2200.676, y = 209.99, z = -897.879}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2205.3, y = 209.99, z = -902.4223}, rot = {x = 0, y = 134.2218, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2209.054, y = 209.99, z = -906.871}, rot = {x = 0, y = 143.6004, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2212.968, y = 209.99, z = -913.3807}, rot = {x = 0, y = 139.5979, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2226.491, y = 209.99, z = -925.962}, rot = {x = 0, y = 110.7906, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2254.774, y = 209.9899, z = -935.7505}, rot = {x = 0, y = 54.18698, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2259.859, y = 209.9899, z = -933.1023}, rot = {x = 0, y = 276.2448, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2246.009, y = 209.9899, z = -931.7809}, rot = {x = 0, y = 287.1272, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2236.716, y = 209.99, z = -928.9198}, rot = {x = 0, y = 293.5328, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2225.178, y = 209.99, z = -923.4221}, rot = {x = 0, y = 305.5188, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2214.076, y = 209.99, z = -914.624}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2209.379, y = 209.99, z = -902.5651}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2209.582, y = 209.99, z = -890.8663}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2209.178, y = 209.99, z = -880.2139}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2205.568, y = 209.99, z = -874.6267}, rot = {x = 0, y = 283.2745, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2199.653, y = 209.99, z = -876.1068}, rot = {x = 0, y = 244.7155, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2195.49, y = 209.99, z = -877.6742}, rot = {x = 0, y = 205.0808, z = 0}},
            action = generalPattern.Patrol
        }
    }
}

local v = {bornConfigId = 100005580, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2046006
local n2 = 1
paramList[1] = 2046
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
tbl2[1] = tbl3
conditionGrp[1] = tbl2
v.conditionGrp = conditionGrp
v.actionPoints = {{action = generalPattern.Hide}}
dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_1449",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config1449.Data = data
return Config1449
