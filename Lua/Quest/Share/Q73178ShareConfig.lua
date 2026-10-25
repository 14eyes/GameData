main_id = 73178
local tbl = {}
local n = 7317802
local v = 7317803
tbl[1] = 7317801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317802"] = {},
    ["7317803"] = {
        npcs = {
            {
                id = 20805,
                alias = "Npc20805",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317802_N20805",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317801"] = {},
    ["7317802"] = {
        npcs = {
            {
                id = 20805,
                alias = "Npc20805",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317802_N20805",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317803"] = {}
}
