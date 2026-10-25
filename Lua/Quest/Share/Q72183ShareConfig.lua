main_id = 72183
local tbl = {}
local n = 7218302
tbl[1] = 7218301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7218301"] = {}, ["7218302"] = {}}

quest_data = {
    ["7218301"] = {},
    ["7218302"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q101401Pll",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
