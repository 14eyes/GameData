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
        NpcId = "20622",
        Alias = "Npc20622",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902312,
                    questGlobalVarValue = 0,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -708.3384, y = 175.4706, z = 12.21746}, rot = {x = 0, y = 212.4438, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {
                    questGlobalVarId = 7902312,
                    questGlobalVarValue = 1,
                    questGlobalVarOperate = compareOperation.Equal,
                    sceneId = 9,
                    priority = 0
                },
                actionPoints = {
                    {
                        dummypoint = {pos = {x = 138.0756, y = 120.2631, z = -149.4641}, rot = {x = 0, y = 134.3671, z = 0}},
                        action = generalPattern.Stand
                    }
                }
            }
        },
        ExplicitNameData = {
            nameDatas = {
                {
                    nameStr = "NPC_EXPNAME_20622",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7902313,
                                questState = questState.None
                            }
                        }
                    }
                },
                {
                    nameStr = "NPC_EXPNAME_20622_2",
                    priority = 0,
                    conditions = {
                        {
                            {
                                _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                                subQuestId = 7902313,
                                questState = questState.UnStarted
                            }
                        }
                    }
                }
            }
        }
    }
}
