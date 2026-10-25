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
local Config30858 = {}

local data = {
    NpcId = "30858",
    Alias = "Npc30858",
    DailyScheduleData = {
        {
            bornConfigId = 573085800,
            condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1925.661, y = 203.0996, z = 2510.53}, rot = {x = 0, y = 254.8911, z = 0}},
                    freestyle = 8010,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Sit
                }
            }
        }
    },
    ExplicitNameData = {
        nameDatas = {
            {
                nameStr = "NPC_EXPNAME_30858",
                priority = 0,
                isBanDaily = true,
                validQuestIds = {40204},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 4020401,
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
local n = 40204
validQuestIds[1] = 0
validQuestIds[2] = n
tbl.validQuestIds = validQuestIds
tbl.priority = 200
tbl.dialogDataList = {{dialogId = 1018308580, duration = 0, intervalMin = 20, intervalMax = 30}}
nahidaNarratorData[1] = tbl
data.NahidaNarratorData = nahidaNarratorData
Config30858.Data = data
return Config30858
