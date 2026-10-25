main_id = 76028
local tbl = {}
local n = 7602805
local v = 7602806
local n2 = 7602807
local n3 = 7602801
local n4 = 7602802
local n5 = 7602803
tbl[1] = 7602804
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7602803"] = {}, ["7602804"] = {}, ["7602805"] = {}, ["7602806"] = {}, ["7602807"] = {}}

quest_data = {
    ["7602801"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_11609:2607.000,-266.000,9089.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_11649:2656.307,193.127,9069.937]"}
        }
    },
    ["7602802"] = {
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_11609:2607.000,-266.000,9089.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_11649:2656.307,193.127,9069.937]"}
        }
    },
    ["7602803"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11649:2656.307,193.127,9069.937]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7602804"] = {},
    ["7602805"] = {},
    ["7602806"] = {},
    ["7602807"] = {}
}
