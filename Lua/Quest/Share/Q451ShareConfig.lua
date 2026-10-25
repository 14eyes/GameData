main_id = 451
local tbl = {}
local n = 45102
local v = 45103
local n2 = 45104
local n3 = 45105
local n4 = 45106
local n5 = 45107
local n6 = 45108
local n7 = 45109
tbl[1] = 45101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
PaimonData = {ID = 1005, Alias = "Paimon"}
RazorData = {ID = 1011, Alias = "Razor"}
rewind_data = {}

rewind_data["45104"] = {
    npcs = {
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            pos = "Q451Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["45105"] = {
    npcs = {
        {
            id = 1011,
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            pos = "Q451Razor",
            data_index = 0,
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["45102"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q451WolfRunStart",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["45103"] = {
    npcs = {
        {
            alias = "Razor",
            script = "Actor/Npc/TempNPC",
            id = 1011,
            pos = "Q451Razor",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q451PlayerPos"}}
}
