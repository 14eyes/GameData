main_id = 12003
local tbl = {}
local n = 1200304
local v = 1200305
local n2 = 1200307
local n3 = 1200308
local n4 = 1200309
tbl[1] = 1200303
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}

rewind_data["1200303"] = {
    npcs = {
        {
            alias = "Npc10045",
            script = "Actor/Quest/Q301/Gaia301",
            id = 10045,
            pos = "Q1200308XQ",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

rewind_data["1200304"] = {
    npcs = {
        {
            alias = "Npc10045",
            script = "Actor/Quest/Q301/Gaia301",
            id = 10045,
            pos = "Q1200308XQ",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["1200303"] = {
    npcs = {
        {
            alias = "Npc10045",
            script = "Actor/Quest/Q301/Gaia301",
            id = 10045,
            pos = "Q1200308XQ",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    }
}

quest_data["1200308"] = {
    npcs = {
        {
            alias = "Npc10045",
            script = "Actor/Quest/Q301/Gaia301",
            id = 10045,
            pos = "Q1200308XQ",
            scene_id = 3,
            room_ID = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1200308Born"}}
}
