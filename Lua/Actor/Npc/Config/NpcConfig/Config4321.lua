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
local Config4321 = {}

local data = {
    NpcId = "4321",
    Alias = "Npc4321",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1099.398, y = 205.555, z = 2685.13}, rot = {x = 0, y = 191.1953, z = 0}},
                    action = generalPattern.Stand
                }
            }
        },
        {
            condition = {daily = dailyCondition.AllDay, sceneId = 20224, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1099.398, y = 205.555, z = 2685.13}, rot = {x = 0, y = 191.1953, z = 0}},
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            condition = {sceneId = 20224, priority = 1},
            conditionGrp = {
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 802110,
                        questState = questState.UnFinished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 802111,
                        questState = questState.UnFinished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 802112,
                        questState = questState.UnFinished
                    }
                },
                {
                    {
                        _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                        subQuestId = 802113,
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
                titleStr = "NPC_TITLE_4321",
                priority = 0,
                condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
            }
        }
    }
}

local nahidaNarratorData = {}
local tbl = {}
local validQuestIds = {}
local n = 73073
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 10
tbl.dialogDataList = {{dialogId = 1018432100, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config4321.Data = data
return Config4321
