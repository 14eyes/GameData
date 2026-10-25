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
        NpcId = "9545",
        Alias = "Npc9545",
        CardScheduleData = {
            bubbleGroup = {[65] = {{weight = 100, initDialog = 1016954501}}},
            actionList = {
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 2}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 2},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 5}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 5},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 111}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 111},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 211}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 211},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 311}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 311},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 411}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 411},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 511}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 511},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 512}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 512},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 9}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 9},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1120,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 1190,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 1}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 1},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 3}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 3},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 4}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 4},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 6}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 6},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 101}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 101},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 102}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 102},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 201}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 201},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 202}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 202},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 203}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 203},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 301}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 301},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 302}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 302},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 303}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 303},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 401}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 401},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 402}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 402},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 8}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 8},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                },
                {
                    conditions = {{{_type_ = LuaVirtualType.NpcActionCardEventCondition, posId = 10}}},
                    point = {_type_ = LuaVirtualType.CardShowPos, configId = 10},
                    priority = 0,
                    freeStyleList = {
                        {
                            weight = 70,
                            time = 6,
                            freestyle = 0,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.2,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8040,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        },
                        {
                            weight = 15,
                            time = 6,
                            freestyle = 8013,
                            isLoop = true,
                            emotion = {phoneme = "", emotion = ""},
                            bubbleRate = 0.5,
                            bubbleDelay = 0.2,
                            bubbleGroupIds = {65}
                        }
                    }
                }
            }
        }
    }
}
