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
local Config4178 = {}

local data = {
    NpcId = "4178",
    Alias = "Npc4178",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {
                questGlobalVarId = 2302801,
                questGlobalVarValue = 1,
                questGlobalVarOperate = compareOperation.Equal,
                sceneId = 3,
                priority = 0
            },
            actionPoints = {
                {
                    dummypoint = {pos = {x = -401.0406, y = 280.7111, z = 2739.168}, rot = {x = 0, y = 133.1222, z = 0}},
                    freestyle = 1190,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4178",
                priority = 0,
                condList = {
                    {
                        condition = {
                            questGlobalVarId = 2302801,
                            questGlobalVarValue = 1,
                            questGlobalVarOperate = compareOperation.Equal
                        },
                        priority = 0,
                        isShow = true
                    }
                }
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 10,
    dialogDataList = {{dialogId = 1018417800, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {}
local validQuestIds = {}
local n = 23029
validQuestIds[1] = 23027
validQuestIds[2] = n
v.validQuestIds = validQuestIds
v.priority = 300
v.dialogDataList = {{dialogId = 1018417801, duration = 0, intervalMin = 20, intervalMax = 30}}

v.conditions = {
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23027, questState = 2}},
    {{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23029, questState = 2}}
}

local tbl2 = {
    validQuestIds = {23028},
    priority = 300,
    dialogDataList = {{dialogId = 1018417802, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23028, questState = 2}}}
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config4178.Data = data
return Config4178
