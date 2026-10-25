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
local Config7109 = {}

local data = {
    NpcId = "7109",
    Alias = "Npc7109",
    DailyScheduleData = {
        {
            bornConfigId = 607109000,
            condition = {sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1954.406, y = 242.6271, z = 10581.7}, rot = {x = 0, y = 206.4817, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Ignore,
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
                titleStr = "NPC_TITLE_7109",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    },
    BillboardMarkData = {
        markDatas = {
            {
                icon = "UI_NPCTopIcon_TalkSpecial",
                priority = 0,
                isBanDaily = false,
                validQuestIds = {0},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 7601101,
                            questGlobalVarValue = 0,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                }
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
    triggerCD = 8,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 157}
local paramList = {}
local n = 2201
local n2 = 0
paramList[1] = 0
paramList[2] = n
paramList[3] = n2
tbl2.paramList = paramList
local tbl3 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 7, compare = 0}
v[1] = tbl2
v[2] = tbl3
preConditions[1] = v
tbl.preConditions = preConditions
local runningConditions = {}
local tbl4 = {}
local tbl5 = {_type_ = LuaVirtualType.NpcActionDistToPlayerCondition, dist = 20, compare = 0}
local tbl6 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 159}
local paramList2 = {}
local n3 = 2201
local n4 = 0
local n5 = 0
paramList2[1] = 0
paramList2[2] = n3
paramList2[3] = n4
paramList2[4] = n5
tbl6.paramList = paramList2
tbl4[1] = tbl5
tbl4[2] = tbl6
runningConditions[1] = tbl4
tbl.runningConditions = runningConditions
tbl.beforeActions = {{_type_ = LuaVirtualType.NpcTurnToPlayerReactionAction, immediate = false}}
tbl.reactionActions = {{_type_ = LuaVirtualType.NpcPlayFreestyleReactionAction, freestyle = 4474, time = 0}}
reactionDatas[1] = tbl
reactionData.reactionDatas = reactionDatas
data.ReactionData = reactionData
Config7109.Data = data
return Config7109
