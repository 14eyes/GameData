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
local Config2476 = {}
local data = {NpcId = "2476", Alias = "Npc2476"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    bornConfigId = 442476000,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {
        {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}},
        {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = 2400.872, y = 343.1514, z = 2396.029}, rot = {x = 0, y = 86.01711, z = 0}},
            freestyle = 1230,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local v = {
    transTeleport = true,
    bornConfigId = 442476000,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {
        {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}},
        {{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = 2399.939, y = 345.2167, z = 2387.473}, rot = {x = 0, y = 66.71949, z = 0}},
            freestyle = 1180,
            time = 15,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = 2399.939, y = 345.2167, z = 2387.473}, rot = {x = 0, y = 66.71949, z = 0}},
            freestyle = 1170,
            time = 15,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl2 = {bornConfigId = 712476000, condition = {sceneId = 0, priority = 5}}
local conditionGrp = {}
local tbl3 = {}

local tbl4 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2051,
    activityCondId = 2051001,
    isActivityValid = true
}

local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 3
paramList[1] = 7167601
paramList[2] = n
tbl5.paramList = paramList
tbl3[1] = tbl4
tbl3[2] = tbl5
conditionGrp[1] = tbl3
tbl2.conditionGrp = conditionGrp

tbl2.actionPoints = {
    {
        dummypoint = {pos = {x = 2457.775, y = 343.0818, z = 2401.513}, rot = {x = 0, y = 320, z = 0}},
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl6 = {bornConfigId = 712476000, condition = {sceneId = 0, priority = 5}}
local conditionGrp2 = {}
local tbl7 = {}

local tbl8 = {
    _type_ = LuaVirtualType.NpcActionActivityCondCondition,
    activityId = 2051,
    activityCondId = 2051001,
    isActivityValid = true
}

local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 119}
local paramList2 = {}
local n2 = 3
paramList2[1] = 7167601
paramList2[2] = n2
tbl9.paramList = paramList2
tbl7[1] = tbl8
tbl7[2] = tbl9
conditionGrp2[1] = tbl7
tbl6.conditionGrp = conditionGrp2

tbl6.actionPoints = {
    {
        dummypoint = {pos = {x = 2454.197, y = 343.0818, z = 2400.184}, rot = {x = 0, y = 296.0585, z = 0}},
        lookAtType = focusToPlayerType.Ignore,
        reactOnCollide = reactEnableType.Ignore,
        reactOnBodyLang = reactEnableType.Ignore,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
dailyScheduleData[3] = tbl2
dailyScheduleData[4] = tbl6
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_2476",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config2476.Data = data
return Config2476
