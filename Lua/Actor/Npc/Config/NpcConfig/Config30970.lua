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
local Config30970 = {}

local data = {
    NpcId = "30970",
    Alias = "Npc30970",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 643097000,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2213.123, y = 230, z = -818.412}, rot = {x = 0, y = 0, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097001,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2214.89, y = 211.9, z = -883.984}, rot = {x = 0, y = 123.997, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097002,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2207.96, y = 209.99, z = -911.86}, rot = {x = 0, y = 52.694, z = 0}},
                    freestyle = 1120,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097003,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2261.69, y = 212.3, z = -937.062}, rot = {x = 0, y = -190.326, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097004,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2295.468, y = 214.131, z = -901.603}, rot = {x = 0, y = 31.685, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097005,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2261.26, y = 215.9, z = -880.38}, rot = {x = 0, y = 186.317, z = 0}},
                    freestyle = 1120,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 643097006,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 2198.66, y = 230.2188, z = -778.0637}, rot = {x = 0, y = 218.7379, z = 0}},
                    freestyle = 1120,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    }
}

local titleDataNew = {}
local titleDatas = {}
local tbl = {titleStr = "NPC_TITLE_30970", priority = 0}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList = {}
local n = 0
paramList[1] = 7055501
paramList[2] = n
tbl2.paramList = paramList
v[1] = tbl2
conditions[1] = v
tbl.conditions = conditions
local tbl3 = {titleStr = "NPC_TITLE_30970_1", priority = 0}
local conditions2 = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n2 = 1
paramList2[1] = 7055501
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
conditions2[1] = tbl4
tbl3.conditions = conditions2
titleDatas[1] = tbl
titleDatas[2] = tbl3
titleDataNew.titleDatas = titleDatas
data.TitleDataNew = titleDataNew
Config30970.Data = data
return Config30970
