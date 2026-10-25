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
local Config30659 = {}

local data = {
    NpcId = "30659",
    Alias = "Npc30659",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 513065900,
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
                    dummypoint = {pos = {x = -1930.725, y = 203.0996, z = 2508.656}, rot = {x = 0, y = 164.1315, z = 0}},
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 513065900,
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
                    dummypoint = {pos = {x = -1932.602, y = 203.0996, z = 2508.672}, rot = {x = 0, y = 260.7848, z = 0}},
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
                titleStr = "NPC_TITLE_30659",
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
                icon = "UI_NPCTopIcon_Activity_SumeruBirthFloatToy",
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
local n = 73352
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018306590, duration = 0, intervalMin = 20, intervalMax = 30}}

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
Config30659.Data = data
return Config30659
