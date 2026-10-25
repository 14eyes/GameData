local Q77125ClientConfig = {
    MainID = 77125,
    ActorAlias = "77125",
    SubIDs = {
        q7712508 = 7712508,
        q7712503 = 7712503,
        q7712510 = 7712510,
        q7712501 = 7712501,
        q7712502 = 7712502,
        q7712504 = 7712504,
        q7712517 = 7712517,
        q7712519 = 7712519,
        q7712518 = 7712518,
        q7712522 = 7712522,
        q7712505 = 7712505,
        q7712521 = 7712521,
        q7712506 = 7712506,
        q7712527 = 7712527,
        q7712507 = 7712507,
        q7712530 = 7712530,
        q7712528 = 7712528,
        q7712529 = 7712529,
        q7712514 = 7712514,
        q7712509 = 7712509,
        q7712520 = 7712520,
        q7712523 = 7712523,
        q7712516 = 7712516,
        q7712524 = 7712524,
        q7712513 = 7712513,
        q7712511 = 7712511,
        q7712515 = 7712515,
        q7712525 = 7712525,
        q7712526 = 7712526,
        q7712512 = 7712512
    },
    Npcs = {
        Npc22430 = {
            id = 22430,
            alias = "Npc22430",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22400 = {
            id = 22400,
            alias = "Npc22400",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22564 = {
            id = 22564,
            alias = "Npc22564",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22563 = {
            id = 22563,
            alias = "Npc22563",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22405 = {
            id = 22405,
            alias = "Npc22405",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22429 = {
            id = 22429,
            alias = "Npc22429",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22439 = {
            id = 22439,
            alias = "Npc22439",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7712503TriggerPoint_ = {pos = {x = 9016.104, y = 232, z = 6116.754}, rot = {x = 0, y = 23.8216, z = 0}},
        _Q7712502TriggerPoint_ = {pos = {x = 9016.104, y = 232, z = 6116.754}, rot = {x = 0, y = 23.8, z = 0}},
        _Q7712504TriggerPoint_ = {pos = {x = 9029.362, y = 248.5914, z = 6120.642}, rot = {x = 0, y = 0, z = 0}},
        _Q7712512TriggerPoint_ = {pos = {x = -514.902, y = 209.797, z = 304.532}, rot = {x = 0.0, y = 320.232, z = 0.0}}
    }
}

local datas = {
    NarratorWithId_97712501 = {narratorId = 97712501, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    NarratorWithId_97712507 = {narratorId = 97712507, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    NarratorWithId_97712512 = {narratorId = 97712512, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
}

local narratorWithId_97712502 = {narratorId = 97712502, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 4
durationList[1] = 5
durationList[2] = n
narratorWithId_97712502.durationList = durationList
datas.NarratorWithId_97712502 = narratorWithId_97712502
datas.NarratorWithId_97712503 = {narratorId = 97712503, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
datas.NarratorWithId_97712504 = {narratorId = 97712504, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
Q77125ClientConfig.Datas = datas
return Q77125ClientConfig
