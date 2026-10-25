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
        NpcId = "3229",
        Alias = "Npc3229",
        DailyScheduleData = {
            refreshDailyActionImmediately = true,
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7219814,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Greater,
                    sceneId = 5,
                    priority = 0
                },
                conditionGrp = {{{_type_ = LuaVirtualType.NpcActionLevelTagCondition, levelTag = 2}}},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 252.5531, y = 337.0548, z = 194.7148}, rot = {x = 0, y = 0, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        }
    }
}
