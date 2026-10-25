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
local Config30894 = {}

local data = {
    NpcId = "30894",
    Alias = "Npc30894",
    DailyScheduleData = {
        {
            transTeleport = true,
            bornConfigId = 623089400,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = 1477.426, y = 266.8077, z = -1086.006}, rot = {x = 0, y = 131.2892, z = 0}},
                    freestyle = 1230,
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
                titleStr = "NPC_TITLE_30894",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    },
    BillboardMarkData = {
        markDatas = {
            {
                icon = "UI_NPCTopIcon_Activity_SnowRace_Parkour",
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
    bornPosId = 623089400,
    priority = 0,
    triggerCD = 5,
    reactionEvent = {eventType = reactEventType.None}
}

local preConditions = {}
local v = {}
local tbl2 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2044200
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
local n3 = 2044200
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
Config30894.Data = data
return Config30894
