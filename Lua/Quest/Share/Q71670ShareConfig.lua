main_id = 71670
local tbl = {}
local n = 7167002
local v = 7167003
tbl[1] = 7167001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7167001"] = {}, ["7167002"] = {}, ["7167003"] = {}}

quest_data = {
    ["7167001"] = {},
    ["7167002"] = {
        npcs = {
            {
                id = 15331,
                alias = "Npc15331",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310500127:975.844,260.604,-187.825,0.000,320.995,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7167003"] = {
        npcs = {
            {
                id = 15517,
                alias = "Npc15517",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310500128:980.867,260.701,-194.405]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
