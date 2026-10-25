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

return {
    Data = {
        NpcId = "4405",
        Alias = "Npc4405",
        DailyScheduleData = {
            {
                condition = {daily = dailyCondition.Night, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -1997.84, y = 298.1275, z = 4136.46}, rot = {x = 0, y = 174.2941, z = 0}},
                        actionPointId = 330300011,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018440500, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {73233},
                priority = 300,
                dialogDataList = {{dialogId = 1018440501, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73233, questState = 2}}}
            },
            {
                validQuestIds = {23041},
                priority = 300,
                dialogDataList = {{dialogId = 1018440502, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23041, questState = 2}}}
            },
            {
                validQuestIds = {23042},
                priority = 300,
                dialogDataList = {{dialogId = 1018440503, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23042, questState = 2}}}
            }
        }
    }
}
