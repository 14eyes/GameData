main_id = 76130
local tbl = {}
local n = 7613002
local v = 7613003
tbl[1] = 7613001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7613001"] = {}, ["7613002"] = {}, ["7613003"] = {}}

quest_data = {
    ["7613001"] = {
        npcs = {
            {
                id = 7164,
                alias = "Npc7164",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14743:5478.865,257.180,9679.347,0.000,226.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7613002"] = {
        npcs = {
            {
                id = 7164,
                alias = "Npc7164",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14742:5417.500,249.201,9743.627,0.000,134.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7613003"] = {}
}
