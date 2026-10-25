local Q75006ClientConfig = {
    MainID = 75006,
    ActorAlias = "75006",
    SubIDs = {
        q7500601 = 7500601,
        q7500602 = 7500602,
        q7500624 = 7500624,
        q7500616 = 7500616,
        q7500615 = 7500615,
        q7500617 = 7500617,
        q7500604 = 7500604,
        q7500626 = 7500626,
        q7500605 = 7500605,
        q7500606 = 7500606,
        q7500627 = 7500627,
        q7500623 = 7500623,
        q7500607 = 7500607,
        q7500618 = 7500618,
        q7500608 = 7500608,
        q7500630 = 7500630,
        q7500631 = 7500631,
        q7500609 = 7500609,
        q7500628 = 7500628,
        q7500629 = 7500629,
        q7500603 = 7500603,
        q7500620 = 7500620,
        q7500611 = 7500611,
        q7500612 = 7500612,
        q7500613 = 7500613,
        q7500614 = 7500614,
        q7500625 = 7500625,
        q7500619 = 7500619,
        q7500621 = 7500621,
        q7500622 = 7500622,
        q7500610 = 7500610
    },
    Npcs = {
        Npc21474Data = {
            id = 21474,
            alias = "Npc21474",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21690Data = {
            id = 21690,
            alias = "Npc21690",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local n_7500601 = {narratorId = 7500601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
n_7500601.durationList = durationList
datas.N_7500601 = n_7500601
datas.DialogsId = {750069999}
local n7500602 = {narratorId = 7500607, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n2 = 2
local n3 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
n7500602.durationList = tbl
datas.N7500602 = n7500602
local n3_2 = {narratorId = 7500602, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n4 = 2
durationList2[1] = 3
durationList2[2] = n4
n3_2.durationList = durationList2
datas.N3 = n3_2

datas.N4 = {
    narratorId = 7500603,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {4}
}

local n5 = {narratorId = 7500605, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList3 = {}
local n6 = 4
local n7 = 2
durationList3[1] = 2
durationList3[2] = n6
durationList3[3] = n7
n5.durationList = durationList3
datas.N5 = n5
local n10 = {narratorId = 7500610, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList4 = {}
local n8 = 3
local n9 = 3
local n11 = 5
local n12 = 5
durationList4[1] = 4
durationList4[2] = n8
durationList4[3] = n9
durationList4[4] = n11
durationList4[5] = n12
n10.durationList = durationList4
datas.N10 = n10
local n11_2 = {narratorId = 7500611, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList5 = {}
local n13 = 4
local n14 = 3
durationList5[1] = 4
durationList5[2] = n13
durationList5[3] = n14
n11_2.durationList = durationList5
datas.N11 = n11_2
Q75006ClientConfig.Datas = datas
return Q75006ClientConfig
