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
local Config2086 = {}
local data = {NpcId = "2086", Alias = "Npc2086"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Night}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = -585.8342, y = 244.3168, z = 346.1966}, rot = {x = 0, y = 116.7432, z = 0}},
            freestyle = 1190,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local v = {
    transTeleport = true,
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.Day}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = -520.2987, y = 209.8188, z = 296.3313}, rot = {x = 0, y = 133.6943, z = 0}},
            freestyle = 1090,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl2 = {
    condition = {sceneId = 3, priority = 1},
    conditionGrp = {
        {
            {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2036,
                activityCondId = 2036001,
                isActivityValid = true
            }
        }
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = -520.2987, y = 209.8188, z = 296.3313}, rot = {x = 0, y = 133.6943, z = 0}},
            freestyle = 1090,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl3 = {bornConfigId = 100000037, condition = {sceneId = 0, priority = 1}}
local conditionGrp = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList = {}
local n = 0
local n2 = 2
paramList[1] = 101001
paramList[2] = n
paramList[3] = n2
tbl5.paramList = paramList
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 4022408
paramList2[2] = n3
tbl6.paramList = paramList2
tbl4[1] = tbl5
tbl4[2] = tbl6
conditionGrp[1] = tbl4
tbl3.conditionGrp = conditionGrp

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = -515.6367, y = 209.7253, z = 301.4277}, rot = {x = 0, y = 128.05, z = 0}},
        freestyle = 1090,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl7 = {bornConfigId = 100000038, condition = {sceneId = 0, priority = 1}}
local conditionGrp2 = {}
local tbl8 = {}
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList3 = {}
local n4 = 0
local n5 = 2
paramList3[1] = 101001
paramList3[2] = n4
paramList3[3] = n5
tbl9.paramList = paramList3
local tbl10 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList4 = {}
local n6 = 3
paramList4[1] = 4022408
paramList4[2] = n6
tbl10.paramList = paramList4
tbl8[1] = tbl9
tbl8[2] = tbl10
conditionGrp2[1] = tbl8
tbl7.conditionGrp = conditionGrp2

tbl7.actionPoints = {
    {
        dummypoint = {pos = {x = -515.6367, y = 209.7253, z = 301.4277}, rot = {x = 0, y = 128.05, z = 0}},
        freestyle = 1090,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
dailyScheduleData[3] = tbl2
dailyScheduleData[4] = tbl3
dailyScheduleData[5] = tbl7
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_2086",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config2086.Data = data
return Config2086
