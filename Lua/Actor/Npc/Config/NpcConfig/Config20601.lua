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
local Config20601 = {}

local data = {
    NpcId = "20601",
    Alias = "Npc20601",
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_20601",
                priority = 0,
                condList = {
                    {
                        condition = {
                            questGlobalVarId = 7300007,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        },
                        priority = 0,
                        isShow = true
                    }
                }
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_20601",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300006,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 7300007,
                            questState = questState.UnFinished
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
local n = 73073
validQuestIds[1] = 73000
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 300
tbl.dialogDataList = {{dialogId = 1018206010, duration = 0, intervalMin = 20, intervalMax = 30}}
local v = {}
local validQuestIds2 = {}
local n2 = 73027
validQuestIds2[1] = 73026
validQuestIds2[2] = n2
v.validQuestIds = validQuestIds2
v.priority = 300
v.dialogDataList = {{dialogId = 1018206011, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
data.NahidaNarratorData = nahidaNarratorData
Config20601.Data = data
return Config20601
