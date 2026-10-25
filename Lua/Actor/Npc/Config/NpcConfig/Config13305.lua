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
local Config13305 = {}

local data = {
    NpcId = "13305",
    Alias = "Npc13305",
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_13305",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 1909802,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        }
                    }
                }
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_13305",
                priority = 0,
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionQuestGlobalVarCondition,
                            questGlobalVarId = 1909802,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
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
local n = 19079
local v = 19098
validQuestIds[1] = 19073
validQuestIds[2] = n
validQuestIds[3] = v
tbl.validQuestIds = validQuestIds
tbl.priority = 301
tbl.dialogDataList = {{dialogId = 1018133050, duration = 0, intervalMin = 20, intervalMax = 30}}

tbl.conditions = {
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 19073, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 19079, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 19098, questState = 2}}
}

nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config13305.Data = data
return Config13305
