local Q73251ClientConfig = {
    MainID = 73251,
    ActorAlias = "73251",
    SubIDs = {
        q7325101 = 7325101,
        q7325144 = 7325144,
        q7325145 = 7325145,
        q7325151 = 7325151,
        q7325103 = 7325103,
        q7325150 = 7325150,
        q7325111 = 7325111,
        q7325147 = 7325147,
        q7325148 = 7325148,
        q7325105 = 7325105,
        q7325112 = 7325112,
        q7325113 = 7325113,
        q7325114 = 7325114,
        q7325142 = 7325142,
        q7325143 = 7325143,
        q7325136 = 7325136,
        q7325115 = 7325115,
        q7325116 = 7325116,
        q7325117 = 7325117,
        q7325118 = 7325118,
        q7325119 = 7325119,
        q7325120 = 7325120,
        q7325121 = 7325121,
        q7325137 = 7325137,
        q7325122 = 7325122,
        q7325140 = 7325140,
        q7325141 = 7325141,
        q7325123 = 7325123,
        q7325124 = 7325124,
        q7325125 = 7325125,
        q7325126 = 7325126,
        q7325130 = 7325130,
        q7325129 = 7325129,
        q7325127 = 7325127,
        q7325128 = 7325128,
        q7325149 = 7325149,
        q7325131 = 7325131,
        q7325132 = 7325132,
        q7325133 = 7325133,
        q7325134 = 7325134,
        q7325135 = 7325135,
        q7325146 = 7325146,
        q7325104 = 7325104,
        q7325109 = 7325109,
        q7325138 = 7325138,
        q7325139 = 7325139
    },
    Npcs = {
        Npc20883Data = {
            id = 20883,
            alias = "Npc20883",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4283Data = {
            id = 4283,
            alias = "Npc4283",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4284Data = {
            id = 4284,
            alias = "Npc4284",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {TPos_Q7325104_N1005Trigger = sceneData:GetDummyPoint(3, "Q7325104_N1005")}
}

local datas = {}
local narrator_7325101 = {narratorId = 7325101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7325101.durationList = durationList
datas.Narrator_7325101 = narrator_7325101
local narrator_7325103 = {narratorId = 7325103, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7325103.durationList = tbl
datas.Narrator_7325103 = narrator_7325103
local narrator_7325105 = {narratorId = 7325105, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n2 = 3
durationList2[1] = 3
durationList2[2] = n2
narrator_7325105.durationList = durationList2
datas.Narrator_7325105 = narrator_7325105

datas.Narrator_7325106 = {
    narratorId = 7325106,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narrator_7325107 = {narratorId = 7325107, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n3 = 3
local n4 = 3
local n5 = 3
local n6 = 3
local n7 = 3
local n8 = 3
local n9 = 3
local n10 = 3
local n11 = 3
local n12 = 3
durationList3[1] = 3
durationList3[2] = n3
durationList3[3] = n4
durationList3[4] = n5
durationList3[5] = n6
durationList3[6] = n7
durationList3[7] = n8
durationList3[8] = n9
durationList3[9] = n10
durationList3[10] = n11
durationList3[11] = n12
narrator_7325107.durationList = durationList3
datas.Narrator_7325107 = narrator_7325107
datas.TextmapId = {""}
Q73251ClientConfig.Datas = datas
return Q73251ClientConfig
