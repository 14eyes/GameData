main_id = 13023
local tbl = {}
local n = 1302303
local v = 1302302
local n2 = 1302301
tbl[1] = 1302304
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1302302"] = {},
    ["1302303"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302301_N1064",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302301_N1053",
                scene_id = 1079,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1302304"] = {}
}

quest_data = {
    ["1302301"] = {},
    ["1302302"] = {},
    ["1302303"] = {},
    ["1302304"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302301_N1064",
                scene_id = 1079,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302301_N1053",
                scene_id = 1079,
                room_id = 1,
                data_index = 2
            }
        }
    }
}
