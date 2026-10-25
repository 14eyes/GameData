main_id = 76152
local tbl = {}
local n = 7615202
local v = 7615203
local n2 = 7615204
local n3 = 7615209
local n4 = 7615205
local n5 = 7615206
local n6 = 7615207
local n7 = 7615210
local n8 = 7615208
tbl[1] = 7615201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7615201"] = {}, ["7615204"] = {}, ["7615206"] = {}, ["7615207"] = {}}

quest_data = {
    ["7615201"] = {
        npcs = {
            {
                id = 22272,
                alias = "Npc22272",
                script = "Actor/Npc/TempNPC",
                pos = "[103_23:134.831,173.127,417.225,0.000,135.966,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22306,
                alias = "Npc22306",
                script = "Actor/Npc/TempNPC",
                pos = "[103_199:135.448,173.127,417.773,0.000,145.478,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7615202"] = {},
    ["7615203"] = {
        transmit_points = {
            {
                point_id = 1,
                scene_id = 103,
                pos = "[103_910301001:-300.280,-384.711,1302.246,0.000,331.458,0.000]"
            }
        }
    },
    ["7615204"] = {},
    ["7615205"] = {
        transmit_points = {{point_id = 1, scene_id = 103, pos = "[103_40:242.187,-626.249,-572.338,0.000,354.419,0.000]"}}
    },
    ["7615206"] = {},
    ["7615207"] = {
        npcs = {
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "[103_209:230.825,-625.580,-356.856,0.000,179.560,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "[103_209:230.825,-625.580,-356.856,0.000,179.560,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7615208"] = {transmit_points = {{point_id = 1, scene_id = 103, pos = "[103_41:230.820,-639.370,339.020]"}}},
    ["7615209"] = {
        transmit_points = {{point_id = 2, scene_id = 103, pos = "[103_201:152.481,170.359,416.013,0.000,273.016,0.000]"}}
    },
    ["7615210"] = {}
}
