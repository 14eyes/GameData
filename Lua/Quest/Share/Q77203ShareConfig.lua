main_id = 77203
local tbl = {}
local n = 7720302
local v = 7720303
local n2 = 7720304
tbl[1] = 7720301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7720301"] = {}, ["7720302"] = {}, ["7720303"] = {}, ["7720304"] = {}}

quest_data = {
    ["7720301"] = {
        npcs = {
            {
                id = 22653,
                alias = "Npc22653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17790:8214.603,352.564,6712.662,0.000,109.983,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7720302"] = {
        npcs = {
            {
                id = 22653,
                alias = "Npc22653",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17793:8260.243,490.361,6182.989,0.000,242.611,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7720303"] = {},
    ["7720304"] = {}
}
