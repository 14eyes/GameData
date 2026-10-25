main_id = 11024
local tbl = {}
local n = 1102402
tbl[1] = 1102401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1102401"] = {}, ["1102402"] = {}}

quest_data = {
    ["1102401"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11024ZL0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1102402"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11024ZL2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
