main_id = 70084
local tbl = {}
local n = 7008402
tbl[1] = 7008401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7008401"] = {}, ["7008402"] = {}}

quest_data = {
    ["7008401"] = {
        npcs = {
            {
                id = 17062,
                alias = "Npc17062",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17836:8223.241,511.320,6213.842,0.000,146.481,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7008402"] = {
        npcs = {
            {
                id = 17062,
                alias = "Npc17062",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18542:8223.113,511.320,6207.398,0.000,146.458,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
