main_id = 70054
local tbl = {}
local n = 7005402
local v = 7005403
tbl[1] = 7005401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7005401"] = {}, ["7005402"] = {}, ["7005403"] = {}}

quest_data = {
    ["7005401"] = {
        npcs = {
            {
                id = 1092,
                alias = "Npc1092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13254:1124.727,203.480,14045.530]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7005402"] = {},
    ["7005403"] = {
        npcs = {
            {
                id = 6311,
                alias = "Npc6311",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12812:1266.512,134.512,13969.370,0.000,278.379,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
