main_id = 71529
local tbl = {}
local n = 7152902
local v = 7152903
tbl[1] = 7152901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7152901"] = {}, ["7152902"] = {}, ["7152903"] = {}}

quest_data = {
    ["7152901"] = {},
    ["7152902"] = {
        npcs = {
            {
                id = 13954,
                alias = "Npc13954",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7030:-352.046,200.421,-699.884,0.000,97.814,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7152903"] = {
        npcs = {
            {
                id = 30473,
                alias = "Npc30473",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7030:-352.046,200.421,-699.884,0.000,97.814,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
