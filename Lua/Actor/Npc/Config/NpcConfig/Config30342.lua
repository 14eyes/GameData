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
local Config30342 = {}

local data = {
    NpcId = "30342",
    Alias = "Npc30342",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            transTeleport = true,
            bornConfigId = 363034200,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -2154.974, y = 174.6863, z = 5999.142}, rot = {x = 0, y = 0, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 363034201,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -2155.031, y = 174.6819, z = 5999.084}, rot = {x = 0, y = 180, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            transTeleport = true,
            bornConfigId = 363034202,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1818.489, y = 153.6545, z = 5960.933}, rot = {x = 0, y = 86.79514, z = 0}},
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_30342",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    },
    BillboardMarkData = {
        markDatas = {
            {
                icon = "UI_NPCTopIcon_Activity_SandwormCannon",
                priority = 1,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128002,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128003,
                            isActivityValid = false
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128005,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128006,
                            isActivityValid = false
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128008,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128009,
                            isActivityValid = false
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128014,
                            isActivityValid = true
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128011,
                            isActivityValid = true
                        },
                        {
                            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
                            activityId = 5128,
                            activityCondId = 5128012,
                            isActivityValid = false
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
local n = 73511
local v = 73512
local n2 = 73513
local n3 = 73514
local n4 = 73515
local n5 = 73516
local n6 = 73517
local n7 = 73518
local n8 = 73519
validQuestIds[1] = 0
validQuestIds[2] = n
validQuestIds[3] = v
validQuestIds[4] = n2
validQuestIds[5] = n3
validQuestIds[6] = n4
validQuestIds[7] = n5
validQuestIds[8] = n6
validQuestIds[9] = n7
validQuestIds[10] = n8
tbl.validQuestIds = validQuestIds
tbl.priority = 101
tbl.dialogDataList = {{dialogId = 1018303420, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5128,
            activityCondId = 5128001,
            isActivityValid = true
        }
    }
}

local tbl2 = {}
local validQuestIds2 = {}
local n9 = 73519
validQuestIds2[1] = 0
validQuestIds2[2] = n9
tbl2.validQuestIds = validQuestIds2
tbl2.priority = 102
tbl2.dialogDataList = {{dialogId = 1018303421, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl2.conditions = {
    {
        {
            _type_ = LuaVirtualType.NpcActionActivityCondCondition,
            activityId = 5128,
            activityCondId = 5128013,
            isActivityValid = true
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config30342.Data = data
return Config30342
