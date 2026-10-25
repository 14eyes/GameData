main_id = 76079
local tbl = {}
local n = 7607902
local v = 7607903
local n2 = 7607904
tbl[1] = 7607901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7607901"] = {},
    ["7607902"] = {},
    ["7607903"] = {
        npcs = {
            {
                id = 22184,
                alias = "Npc22184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13618:1955.848,201.135,9720.668,0.000,249.475,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7607904"] = {}
}

quest_data = {
    ["7607901"] = {},
    ["7607902"] = {
        npcs = {
            {
                id = 22184,
                alias = "Npc22184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13618:1955.848,201.135,9720.668,0.000,249.475,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7607903"] = {},
    ["7607904"] = {
        npcs = {
            {
                id = 22184,
                alias = "Npc22184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13618:1955.848,201.135,9720.668,0.000,249.475,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
