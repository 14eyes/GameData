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
local Config2487 = {}
local data = {NpcId = "2487", Alias = "Npc2487"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    bornConfigId = 442487000,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = 2423.069, y = 341.8975, z = 2377.075}, rot = {x = 0, y = 299.2578, z = 0}},
            freestyle = 1230,
            time = 5,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = 2410.302, y = 341.8975, z = 2363.517}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2407.815, y = 341.8975, z = 2355.4}, rot = {x = 0, y = 150.8279, z = 0}},
            freestyle = 1120,
            time = 7,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = 2418.134, y = 341.8975, z = 2366.979}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2423.069, y = 341.8975, z = 2377.075}, rot = {x = 0, y = 299.2578, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = 2433.407, y = 341.8975, z = 2394.417}, rot = {x = 0, y = 116.2339, z = 0}},
            freestyle = 1190,
            time = 5,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local v = {transTeleport = true, bornConfigId = 442487000, condition = {sceneId = 0, priority = 4}}
local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2051001
local n2 = 1
paramList[1] = 2051
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
tbl2[1] = tbl3
conditionGrp[1] = tbl2
v.conditionGrp = conditionGrp

v.actionPoints = {
    {
        dummypoint = {pos = {x = 2407.703, y = 341.8975, z = 2355.976}, rot = {x = 0, y = 167.4289, z = 0}},
        freestyle = 1230,
        time = 5,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    },
    {
        dummypoint = {pos = {x = 2408.707, y = 341.8975, z = 2363.092}, rot = {x = 0, y = 0, z = 0}},
        action = generalPattern.Patrol
    },
    {
        dummypoint = {pos = {x = 2407.167, y = 341.8975, z = 2368.238}, rot = {x = 0, y = 80.93159, z = 0}},
        freestyle = 1190,
        time = 8,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_2487",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config2487.Data = data
return Config2487
