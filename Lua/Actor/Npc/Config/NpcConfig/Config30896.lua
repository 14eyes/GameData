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
local Config30896 = {}

local data = {
    NpcId = "30896",
    Alias = "Npc30896",
    DailyScheduleData = {
        {
            transTeleport = true,
            bornConfigId = 623089600,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1483.87, y = 266.748, z = -1080.871}, rot = {x = 0, y = 166.5996, z = 0}},
                    lookAtType = focusToPlayerType.Default,
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
                titleStr = "NPC_TITLE_30896",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    },
    BillboardMarkData = {
        markDatas = {
            {
                icon = "UI_NPCTopIcon_Activity_SnowRace_Combat",
                priority = 0,
                isBanDaily = false,
                validQuestIds = {0},
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
    bornPosId = 623089600,
    priority = 0,
    triggerCD = 0,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2044401
local n2 = 1
paramList[1] = 2044
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
v[1] = tbl2
v[2] = tbl3
preConditions[1] = v
tbl.preConditions = preConditions
local runningConditions = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList2 = {}
local n3 = 2044401
local n4 = 1
paramList2[1] = 2044
paramList2[2] = n3
paramList2[3] = n4
tbl5.paramList = paramList2
local tbl6 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 5, compare = 0}
tbl4[1] = tbl5
tbl4[2] = tbl6
runningConditions[1] = tbl4
tbl.runningConditions = runningConditions
tbl.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 1200, time = 0}}
reactionDatas[1] = tbl
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config30896.Data = data
return Config30896
