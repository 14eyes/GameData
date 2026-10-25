main_id = 1011
local tbl = {}
local n = 101116
local v = 101102
local n2 = 101103
local n3 = 101112
local n4 = 101104
local n5 = 101127
local n6 = 101105
local n7 = 101113
local n8 = 101114
local n9 = 101115
local n10 = 101106
local n11 = 101107
local n12 = 101108
local n13 = 101109
tbl[1] = 101101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
sub_ids = tbl
rewind_data = {}
rewind_data["101104"] = {npcs = {}}
rewind_data["101109"] = {avatar = {scene_id = 3, pos = "Q101109Avatar"}}
quest_data = {}

quest_data["101101"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101101Zhongli",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q1011Shitou",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101104"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q101104Paimon",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101105"] = {
    gadgets = {{id = 71700094, pos = "Q101105Gadget", alias = "Q101105Gadget", scene_id = 3, room_id = 0}}
}

quest_data["101106"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101104Paimon",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101107"] = {
    npcs = {
        {
            id = 205401,
            alias = "Npc205401",
            script = "Actor/Npc/TempNPC",
            pos = "Q1011Shitou",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101101Zhongli",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101108"] = {gadgets = {{id = 71700094, pos = "Q101108ZL", alias = "Q101108Gadget", scene_id = 3, room_id = 0}}}

quest_data["101109"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101109ZL",
            scene_id = 3,
            data_index = 0
        }
    }
}
