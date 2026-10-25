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
        NpcId = "4004",
        Alias = "Npc4004",
        DailyScheduleData = {
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Day, sceneId = 3, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -444.2668, y = 239.5433, z = 2722.681}, rot = {x = 0, y = 295.4824, z = 0}},
                        freestyle = 1120,
                        action = generalPattern.Stand
                    }
                }
            },
            {
                transTeleport = true,
                condition = {daily = dailyCondition.Night, sceneId = 1074, priority = 0},
                actionPoints = {
                    {
                        dummypoint = {pos = {x = -7.23795, y = 0.0361462, z = 9.334579}, rot = {x = 0, y = 0, z = 0}},
                        freestyle = 8040,
                        action = generalPattern.Sit
                    }
                }
            }
        },
        TitleData = {
            titleDatas = {
                {
                    titleStr = "NPC_TITLE_4004",
                    priority = 0,
                    condList = {{condition = {daily = dailyCondition.AllDay}, priority = 0, isShow = true}}
                }
            }
        },
        NahidaNarratorData = {
            {
                validQuestIds = {0},
                priority = 10,
                dialogDataList = {{dialogId = 1018400400, duration = 0, intervalMin = 20, intervalMax = 30}}
            },
            {
                validQuestIds = {23001},
                priority = 300,
                dialogDataList = {{dialogId = 1018400401, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {{{_type_ = LuaVirtualType.NpcActionMainQuestCondition, mainQuestId = 23001, questState = 2}}}
            },
            {
                validQuestIds = {23005},
                priority = 300,
                dialogDataList = {{dialogId = 1018400403, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300504,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300505,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300506,
                            questState = questState.UnFinished
                        }
                    }
                }
            },
            {
                validQuestIds = {23005},
                priority = 300,
                dialogDataList = {{dialogId = 1018400402, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300502,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300502,
                            questState = questState.Finished
                        }
                    }
                }
            },
            {
                validQuestIds = {23003},
                dialogDataList = {{dialogId = 1018400404, duration = 0, intervalMin = 20, intervalMax = 30}},
                conditions = {
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300302,
                            questState = questState.UnFinished
                        }
                    },
                    {
                        {
                            _type_ = LuaVirtualType.NpcActionSubQuestCondition,
                            subQuestId = 2300303,
                            questState = questState.UnFinished
                        }
                    }
                }
            }
        }
    }
}
