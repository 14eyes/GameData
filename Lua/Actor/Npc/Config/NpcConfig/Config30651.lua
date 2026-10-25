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
local Config30651 = {}

local data = {
    NpcId = "30651",
    Alias = "Npc30651",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 513065100,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 2},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2034,
                        activityCondId = 2034002,
                        isActivityValid = true
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1917.368, y = 203.0997, z = 2500.821}, rot = {x = 0, y = 343.912, z = 0}},
                    freestyle = 1130,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 513065100,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 1},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                        activityId = 2034,
                        activityCondId = 2034002,
                        isActivityValid = false
                    }
                }
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1919.187, y = 203.0997, z = 2500.576}, rot = {x = 0, y = 344.543, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Ignore,
                    reactOnCollide = reactEnableType.Ignore,
                    reactOnBodyLang = reactEnableType.Ignore,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_30651",
                priority = 0,
                conditions = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034001,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    },
    BillboardMarkData = {
        markDatas = {
            {
                icon = "UI_NPCTopIcon_Activity_SumeruBirthDreamExplore",
                priority = 0,
                conditions = {
                    {
                        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 2034,
                            activityCondId = 2034002,
                            isActivityValid = true
                        }
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73353
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018306510, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay},
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 2034,
            activityCondId = 2034001,
            isActivityValid = true
        }
    }
}

nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30651.Data = data
return Config30651
