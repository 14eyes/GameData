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
local Config6663 = {}
local data = {NpcId = "6663", Alias = "Npc6663"}
local dailyScheduleData = {refreshDailyActionImmediately = true}

local tbl = {
    transTeleport = true,
    bornConfigId = 586663000,
    condition = {sceneId = 3, priority = 2},
    actionPoints = {
        {
            dummypoint = {pos = {x = 1408.288, y = 203.5356, z = 15042.17}, rot = {x = 0, y = 298.5656, z = 0}},
            freestyle = 8,
            lookAtType = focusToPlayerType.Ignore,
            reactOnCollide = reactEnableType.Ignore,
            reactOnBodyLang = reactEnableType.Ignore,
            action = generalPattern.Stand
        }
    }
}

local v = {transTeleport = true, bornConfigId = 586663000, condition = {sceneId = 0, priority = 5}}
local conditionGrp = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList = {}
local n = 2
paramList[1] = 1504430
paramList[2] = n
tbl3.paramList = paramList
tbl2[1] = tbl3
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n2 = 2
paramList2[1] = 7526102
paramList2[2] = n2
tbl5.paramList = paramList2
tbl4[1] = tbl5
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList3 = {}
local n3 = 2
paramList3[1] = 1504416
paramList3[2] = n3
tbl7.paramList = paramList3
tbl6[1] = tbl7
conditionGrp[1] = tbl2
conditionGrp[2] = tbl4
conditionGrp[3] = tbl6
v.conditionGrp = conditionGrp

v.actionPoints = {
    {
        dummypoint = {pos = {x = 1408.288, y = 203.5356, z = 15042.17}, rot = {x = 0, y = 298.5656, z = 0}},
        action = generalPattern.Hide
    }
}

dailyScheduleData[1] = tbl
dailyScheduleData[2] = v
data.DailyScheduleData = dailyScheduleData

data.ReactionData = {
    reactionDatas = {
        {
            _type_ = NpcConfigCommon.ReactDataType.SimpleParallel,
            reactionId = 1,
            bornPosId = 0,
            priority = 3,
            triggerCD = 5,
            reactionEvent = {eventType = reactEventType.None},
            preConditions = {
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "StandbyShow_01"},
                    {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
                }
            },
            runningConditions = {
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "StandbyShow_01"},
                    {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
                }
            },
            reactionActions = {group0 = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1, time = 3}}}
        },
        {
            _type_ = NpcConfigCommon.ReactDataType.StoryAction,
            reactionId = 2,
            bornPosId = 0,
            priority = 4,
            triggerCD = 4,
            reactionEvent = {eventType = reactEventType.None},
            preConditions = {
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "GroundAimLoop"},
                    {
                        _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                        angle = 45,
                        range = 10,
                        minHeight = 10,
                        maxHeight = 10
                    }
                },
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "AirAimLoop"},
                    {
                        _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                        angle = 45,
                        range = 10,
                        minHeight = 10,
                        maxHeight = 10
                    }
                }
            },
            runningConditions = {
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "GroundAimLoop"},
                    {
                        _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                        angle = 45,
                        range = 10,
                        minHeight = 10,
                        maxHeight = 10
                    }
                },
                {
                    {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 141, paramList = {30019}},
                    {_type_ = LuaVirtualType.NpcActionIsPlayerInAnimStateCondition, anims = "AirAimLoop"},
                    {
                        _type_ = LuaVirtualType.NpcActionIsInPlayerRangeCondition,
                        angle = 45,
                        range = 10,
                        minHeight = 10,
                        maxHeight = 10
                    }
                }
            },
            beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}},
            storyId = 600580001
        }
    }
}

Config6663.Data = data
return Config6663
