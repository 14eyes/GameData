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
        NpcId = "4456",
        Alias = "Npc4456",
        DailyScheduleData = {
            {
                bornConfigId = 384456000,
                condition = {daily = dailyCondition.AllDay, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -543.2637, y = 201.5522, z = 2801.544}, rot = {x = 0, y = 6.675142, z = 0}},
                        freestyle = 1230,
                        action = generalPattern.Stand
                    }
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {73350},
                priority = 300,
                dialogDataList = {
                    {dialogId = 733509901, duration = 0, intervalMin = 20, intervalMax = 30},
                    {dialogId = 733509902, duration = 0, intervalMin = 20, intervalMax = 30}
                },
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 73350, questState = 2}}}
            },
            {
                validQuestIds = {0},
                priority = 100,
                dialogDataList = {{dialogId = 1018445600, duration = 0, intervalMin = 20, intervalMax = 30}}
            }
        }
    }
}
