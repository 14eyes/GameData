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
local Config4105 = {}

local data = {
    NpcId = "4105",
    Alias = "Npc4105",
    DailyScheduleData = {
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -287.5209, y = 242.31, z = 2861.321}, rot = {x = 0, y = 297.3352, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            condition = {sceneId = 3, priority = 5},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4010021,
                        questState = questState.UnFinished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4010022,
                        questState = questState.UnFinished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 4010023,
                        questState = questState.UnFinished
                    }
                }
            },
            actionPoints = {{action = generalPattern.Hide}}
        }
    },
    TitleData = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4105",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 13031
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 10
tbl.dialogDataList = {{dialogId = 1018410500, duration = 0, intervalMin = 20, intervalMax = 30}}

local v = {
    validQuestIds = {13031},
    priority = 300,
    dialogDataList = {{dialogId = 130319912, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303108,
                questState = questState.UnFinished
            }
        }
    }
}

local tbl2 = {
    validQuestIds = {13031},
    dialogDataList = {{dialogId = 1018410501, duration = 0, intervalMin = 20, intervalMax = 30}},
    conditions = {
        {
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303115,
                questState = questState.UnFinished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303114,
                questState = questState.UnFinished
            },
            {
                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                subQuestId = 1303107,
                questState = questState.UnFinished
            }
        }
    }
}

nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl2
data.NahidaNarratorData = nahidaNarratorData
Config4105.Data = data
return Config4105
