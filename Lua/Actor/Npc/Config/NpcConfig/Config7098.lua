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
local Config7098 = {}

local data = {
    NpcId = "7098",
    Alias = "Npc7098",
    DailyScheduleData = {
        {
            bornConfigId = 607098000,
            condition = {sceneId = 3, priority = 0},
            conditionGrp = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1754.116, y = 223.9379, z = 10435.39}, rot = {x = 0, y = 110.6909, z = 0}},
                    lookAtType = focusToPlayerType.OnlyOnce,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_7098",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local reactionData = {}
local reactionDatas = {}

local tbl = {
    _type_ = NpcConfigCommon.ReactDataType.SimpleSerial,
    reactionId = 1,
    bornPosId = 0,
    priority = 3,
    triggerCD = 15,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList = {}
local n = 2201
local n2 = 0
local n3 = 0
paramList[1] = 0
paramList[2] = n
paramList[3] = n2
paramList[4] = n3
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 3, compare = 0}
v[1] = tbl2
v[2] = tbl3
preConditions[1] = v
tbl.preConditions = preConditions
tbl.runningConditions = {{{_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 7, compare = 0}}}
tbl.beforeActions = {{_type_ = LuaVirtualType.NpcFaceToPlayerReactionAction}}
tbl.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 5010, time = 0}}
reactionDatas[1] = tbl
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config7098.Data = data
return Config7098
