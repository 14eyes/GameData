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
local Config1433 = {}
local data = {NpcId = "1433", Alias = "Npc1433"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = 2262.491, y = 214.09, z = -915.652}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2282.867, y = 213.9923, z = -907.3146}, rot = {x = 0, y = 97.80431, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2294.13, y = 213.99, z = -909.3098}, rot = {x = 0, y = 120.8911, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2299.439, y = 213.99, z = -915.7064}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2294.657, y = 213.99, z = -922.7129}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2287.002, y = 213.99, z = -928.0748}, rot = {x = 0, y = 341.9188, z = 0}},
            freestyle = 1120,
            time = 15,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = 2294.433, y = 213.99, z = -922.9396}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2300.688, y = 213.99, z = -913.9161}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2290.832, y = 213.99, z = -906.4539}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2263.357, y = 214.09, z = -914.4402}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        }
    }
}

local v = {bornConfigId = 100002331, condition = {sceneId = 0, priority = 1}}
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
            titleStr = "NPC_TITLE_1433",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config1433.Data = data
return Config1433
