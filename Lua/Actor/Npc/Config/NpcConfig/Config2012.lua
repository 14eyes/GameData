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
local Config2012 = {}
local data = {NpcId = "2012", Alias = "Npc2012"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    condition = {sceneId = 3, priority = 0},
    conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
    actionPoints = {
        {
            dummypoint = {pos = {x = -530.0284, y = 209.8075, z = 302.4829}, rot = {x = 1.527537, y = 45.51772, z = 359.174}},
            time = 10,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = -539.9548, y = 210.2188, z = 308.6621}, rot = {x = 0, y = 265.1612, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = -557.8748, y = 210.0222, z = 291.0231}, rot = {x = 0, y = 283.9485, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = -570, y = 210, z = 292}, rot = {x = 0, y = 355.2125, z = 0}},
            freestyle = 1230,
            time = 20,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = -560.1608, y = 209.8242, z = 277.4205}, rot = {x = 0, y = 124.6252, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = -551.4275, y = 209.8222, z = 271.7468}, rot = {x = 0, y = 184.9838, z = 0}},
            freestyle = 1230,
            time = 20,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {pos = {x = -547.8902, y = 209.8222, z = 273.866}, rot = {x = 0, y = 36.04202, z = 0}},
            freestyle = 1230,
            time = 20,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        },
        {
            dummypoint = {
                pos = {x = -556.3928, y = 209.8222, z = 281.8611},
                rot = {x = 11.99989, y = 50.98277, z = 14.39101}
            },
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = -534.5946, y = 209.8045, z = 302.8053}, rot = {x = 0, y = 0, z = 0}},
            action = generalPattern.Patrol
        },
        {
            dummypoint = {pos = {x = -529.642, y = 209.8075, z = 302.0638}, rot = {x = 358.803, y = 47.29294, z = 356.4731}},
            freestyle = 1050,
            time = 10,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local v = {
    condition = {sceneId = 3, priority = 1},
    conditionGrp = {
        {
            {
                _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                activityId = 2019,
                activityCondId = 2019001,
                isActivityValid = true
            }
        }
    },
    actionPoints = {
        {
            dummypoint = {pos = {x = -516.1693, y = 209.7134, z = 256.9138}, rot = {x = 0, y = 39.24109, z = 0}},
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl2 = {
    condition = {sceneId = 3, priority = 3},
    conditionGrp = {
        {
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
            dummypoint = {pos = {x = -513.1759, y = 207.8169, z = 243.476}, rot = {x = 0, y = 66.00809, z = 0}},
            freestyle = 1190,
            lookAtType = focusToPlayerType.Default,
            reactOnCollide = reactEnableType.Default,
            reactOnBodyLang = reactEnableType.Default,
            action = generalPattern.Stand
        }
    }
}

local tbl3 = {bornConfigId = 100002222, condition = {sceneId = 0, priority = 3}}
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
tbl4[1] = tbl5
conditionGrp[1] = tbl4
tbl3.conditionGrp = conditionGrp

tbl3.actionPoints = {
    {
        dummypoint = {pos = {x = -514.1208, y = 207.8245, z = 244.9359}, rot = {x = 0, y = 66.00809, z = 0}},
        freestyle = 1190,
        lookAtType = focusToPlayerType.Default,
        reactOnCollide = reactEnableType.Default,
        reactOnBodyLang = reactEnableType.Default,
        action = generalPattern.Stand
    }
}

local tbl6 = {bornConfigId = 100008443, condition = {sceneId = 0, priority = 3}}
local conditionGrp2 = {}
local tbl7 = {}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 173}
local paramList2 = {}
local n3 = 0
local n4 = 2
paramList2[1] = 101001
paramList2[2] = n3
paramList2[3] = n4
tbl8.paramList = paramList2
tbl7[1] = tbl8
conditionGrp2[1] = tbl7
tbl6.conditionGrp = conditionGrp2

tbl6.actionPoints = {
    {
        dummypoint = {pos = {x = -514.1208, y = 207.8245, z = 244.9359}, rot = {x = 0, y = 66.00809, z = 0}},
        freestyle = 1190,
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
dailyScheduleData[5] = tbl6
data.DailyScheduleData = dailyScheduleData

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_2012",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

Config2012.Data = data
return Config2012
