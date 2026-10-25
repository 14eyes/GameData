main_id = 10113
local tbl = {}
local n = 1011302
local v = 1011303
local n2 = 1011304
local n3 = 1011305
local n4 = 1011306
tbl[1] = 1011301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
rewind_data = {}
local v2 = rewind_data

local tbl2 = {
    npcs = {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

local quest_var = {}
local n5 = -1
local n6 = -1
local n7 = -1
local n8 = -1
quest_var[1] = 2
quest_var[2] = n5
quest_var[3] = n6
quest_var[4] = n7
quest_var[5] = n8
tbl2.quest_var = quest_var
v2["1011304"] = tbl2

rewind_data["1011305"] = {
    npcs = {
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["1011301"] = {
    npcs = {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["1011302"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 1009, pos = "Q1011303Player"}}
}

quest_data["1011303"] = {
    npcs = {
        {
            alias = "Npc141101",
            script = "Actor/Npc/TempNPC",
            id = 141101,
            pos = "Q1011301Stanley",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Diluc",
            script = "Actor/Quest/Q376/Diluc",
            id = 1009,
            pos = "Q49009Diluke",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        },
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 1009,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["1011305"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011303Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
