local Q73066ClientConfig = {
    MainID = 73066,
    ActorAlias = "73066",
    SubIDs = {
        q7306601 = 7306601,
        q7306602 = 7306602,
        q7306603 = 7306603,
        q7306604 = 7306604,
        q7306605 = 7306605,
        q7306606 = 7306606,
        q7306608 = 7306608,
        q7306610 = 7306610,
        q7306612 = 7306612,
        q7306642 = 7306642,
        q7306613 = 7306613,
        q7306615 = 7306615,
        q7306616 = 7306616,
        q7306617 = 7306617,
        q7306618 = 7306618,
        q7306619 = 7306619,
        q7306633 = 7306633,
        q7306620 = 7306620,
        q7306636 = 7306636,
        q7306637 = 7306637,
        q7306638 = 7306638,
        q7306621 = 7306621,
        q7306640 = 7306640,
        q7306639 = 7306639,
        q7306622 = 7306622,
        q7306623 = 7306623,
        q7306644 = 7306644,
        q7306625 = 7306625,
        q7306626 = 7306626,
        q7306627 = 7306627,
        q7306628 = 7306628,
        q7306643 = 7306643,
        q7306629 = 7306629,
        q7306630 = 7306630,
        q7306641 = 7306641,
        q7306631 = 7306631,
        q7306634 = 7306634,
        q7306632 = 7306632,
        q7306624 = 7306624,
        q7306614 = 7306614,
        q7306611 = 7306611,
        q7306609 = 7306609,
        q7306607 = 7306607
    },
    Npcs = {
        Npc20576Data = {
            id = 20576,
            alias = "Npc20576",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20577Data = {
            id = 20577,
            alias = "Npc20577",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20578Data = {
            id = 20578,
            alias = "Npc20578",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    Q7306619NarratorTable = {{dialogID = 730669901, audioEvtName = "", duration = 3}},
    Q7306631NarratorTable = {
        {dialogID = 730669902, audioEvtName = "", duration = 3},
        {dialogID = 730669903, audioEvtName = "", duration = 3}
    }
}

local q7306623NarratorWithId = {narratorId = 7306623, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 5
durationList[2] = n
durationList[3] = v
q7306623NarratorWithId.durationList = durationList
datas.Q7306623NarratorWithId = q7306623NarratorWithId
Q73066ClientConfig.Datas = datas
return Q73066ClientConfig
