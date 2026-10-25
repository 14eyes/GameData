main_id = 71526
local tbl = {}
local n = 7152602
local v = 7152603
tbl[1] = 7152601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7152601"] = {}, ["7152602"] = {}, ["7152603"] = {}}

quest_data = {
    ["7152601"] = {},
    ["7152602"] = {
        npcs = {
            {
                id = 13952,
                alias = "Npc13952",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7027:-342.942,200.466,-710.953,0.000,3.460,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7152603"] = {
        npcs = {
            {
                id = 30472,
                alias = "Npc30472",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7027:-342.942,200.466,-710.953,0.000,3.460,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
