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
local Config7103 = {}
local data = {NpcId = "7103", Alias = "Npc7103"}
local inteeData = {}
local inteeDatas = {}
local tbl = {icon = "UI_Icon_Intee_NodKrai_LunarEdictStatuette", priority = 0, validQuestIds = {0}}
local conditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 156}
local paramList = {}
local n = 2201
local n2 = 0
paramList[1] = 0
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList2 = {}
local n3 = 1
paramList2[1] = 7665009
paramList2[2] = n3
tbl3.paramList = paramList2
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 46}
local paramList3 = {}
local n4 = 2
paramList3[1] = 7665005
paramList3[2] = n4
tbl4.paramList = paramList3
v[1] = tbl2
v[2] = tbl3
v[3] = tbl4
conditions[1] = v
tbl.conditions = conditions
inteeDatas[1] = tbl
inteeData.inteeDatas = inteeDatas
data.InteeData = inteeData

data.DailyScheduleData = {
    refreshDailyActionImmediately = true,
    {
        bornConfigId = 607103000,
        condition = {sceneId = 3, priority = 0},
        conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1804.038, y = 240.0188, z = 10374.41}, rot = {x = 0, y = 338.7366, z = 0}},
                freestyle = 1190,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    },
    {
        bornConfigId = 607103000,
        condition = {sceneId = 3, priority = 1},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                    questGlobalVarId = 7665005,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal
                }
            }
        },
        actionPoints = {
            {
                dummypoint = {pos = {x = 1804.038, y = 240.0188, z = 10374.41}, rot = {x = 0, y = 338.7366, z = 0}},
                freestyle = 1240,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    },
    {
        bornConfigId = 607103001,
        condition = {sceneId = 0, priority = 0},
        actionPoints = {
            {
                dummypoint = {pos = {x = 1805.607, y = 240.2151, z = 10371.86}, rot = {x = 0, y = 65.28288, z = 0}},
                freestyle = 1190,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    },
    {
        bornConfigId = 607103001,
        condition = {sceneId = 0, priority = 1},
        conditionGrp = {
            {
                {
                    _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                    questGlobalVarId = 7665005,
                    questGlobalVarValue = 2,
                    questGlobalVarOperate = compareOperation.Equal
                }
            }
        },
        actionPoints = {
            {
                dummypoint = {pos = {x = 1805.607, y = 240.2151, z = 10371.86}, rot = {x = 0, y = 65.28288, z = 0}},
                freestyle = 1240,
                lookAtType = focusToPlayerType.Ignore,
                reactOnCollide = reactEnableType.Default,
                reactOnBodyLang = reactEnableType.Default,
                action = generalPattern.Stand
            }
        }
    }
}

data.TitleDataNew = {
    titleDatas = {
        {
            titleStr = "NPC_TITLE_7103",
            priority = 0,
            conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
        }
    }
}

local reactionData = {}
local reactionDatas = {}

local tbl5 = {
    _type_ = NpcConfigCommon.ReactDataType.SimpleSerial,
    reactionId = 1,
    bornPosId = 0,
    priority = 3,
    triggerCD = 8,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local tbl6 = {}
local tbl7 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList4 = {}
local n5 = 2201
local n6 = 0
paramList4[1] = 0
paramList4[2] = n5
paramList4[3] = n6
tbl7.paramList = paramList4
local tbl8 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 7, compare = 0}
tbl6[1] = tbl7
tbl6[2] = tbl8
preConditions[1] = tbl6
tbl5.preConditions = preConditions
local runningConditions = {}
local tbl9 = {}
local tbl10 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 20, compare = 0}
local tbl11 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 159}
local paramList5 = {}
local n7 = 2201
local n8 = 0
local n9 = 0
paramList5[1] = 0
paramList5[2] = n7
paramList5[3] = n8
paramList5[4] = n9
tbl11.paramList = paramList5
tbl9[1] = tbl10
tbl9[2] = tbl11
runningConditions[1] = tbl9
tbl5.runningConditions = runningConditions
tbl5.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl5.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 4474, time = 0}}
reactionDatas[1] = tbl5
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config7103.Data = data
return Config7103
