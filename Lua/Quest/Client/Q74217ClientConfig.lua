local Q74217ClientConfig = {
    MainID = 74217,
    ActorAlias = "74217",
    SubIDs = {
        q7421709 = 7421709,
        q7421716 = 7421716,
        q7421701 = 7421701,
        q7421711 = 7421711,
        q7421702 = 7421702,
        q7421703 = 7421703,
        q7421704 = 7421704,
        q7421705 = 7421705,
        q7421706 = 7421706,
        q7421717 = 7421717,
        q7421707 = 7421707,
        q7421708 = 7421708,
        q7421710 = 7421710,
        q7421712 = 7421712,
        q7421713 = 7421713,
        q7421714 = 7421714,
        q7421715 = 7421715
    },
    Npcs = {
        Npc20657 = {
            id = 20657,
            alias = "Npc20657",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12700 = {
            id = 12700,
            alias = "Npc12700",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20658 = {
            id = 20658,
            alias = "Npc20658",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5344 = {
            id = 5344,
            alias = "Npc5344",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5345 = {
            id = 5345,
            alias = "Npc5345",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5346 = {
            id = 5346,
            alias = "Npc5346",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5354 = {
            id = 5354,
            alias = "Npc5354",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14068 = {
            id = 14068,
            alias = "Npc14068",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14029 = {
            id = 14029,
            alias = "Npc14029",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14069 = {
            id = 14069,
            alias = "Npc14069",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14070 = {
            id = 14070,
            alias = "Npc14070",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14066 = {
            id = 14066,
            alias = "Npc14066",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14065 = {
            id = 14065,
            alias = "Npc14065",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14067 = {
            id = 14067,
            alias = "Npc14067",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        Q7421714Trigger = {pos = {x = 1218.106, y = 297.552, z = 4344.929}, rot = {x = 0.0, y = 77.119, z = 0.0}}
    }
}

local datas = {
    DialogIdsData = {742179901},
    NarratorWithId_2 = {
        narratorId = 7421703,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {3}
    }
}

local narratorWithId_5 = {narratorId = 7421706, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId_5.durationList = durationList
datas.NarratorWithId_5 = narratorWithId_5

datas.NarratorWithId_3 = {
    narratorId = 7421704,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

datas.NarratorWithId_4 = {
    narratorId = 7421705,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

datas.TransmitData = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 1,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = false
}

Q74217ClientConfig.Datas = datas
return Q74217ClientConfig
