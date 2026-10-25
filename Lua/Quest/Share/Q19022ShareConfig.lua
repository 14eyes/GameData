main_id = 19022
local tbl = {}
local n = 1902202
tbl[1] = 1902201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1902201"] = {}, ["1902202"] = {}}

quest_data = {
    ["1902201"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902202CY",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10901,
                alias = "Npc10901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1902201Child",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902202"] = {}
}
