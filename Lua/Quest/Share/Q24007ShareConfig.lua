main_id = 24007
local tbl = {}
local n = 2400702
local v = 2400703
local n2 = 2400704
local n3 = 2400705
local n4 = 2400706
tbl[1] = 2400701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2400701"] = {}, ["2400705"] = {}, ["2400706"] = {}}

quest_data = {
    ["2400701"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100110:3539.449,304.262,4597.773,0.000,135.960,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100109:3540.137,304.262,4597.260,0.000,312.500,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400702"] = {
        npcs = {
            {
                id = 21055,
                alias = "Npc21055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100103:3550.832,302.826,4602.604]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400703"] = {
        npcs = {
            {
                id = 21056,
                alias = "Npc21056",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100104:3562.563,302.656,4613.192]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400704"] = {
        npcs = {
            {
                id = 21057,
                alias = "Npc21057",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100105:3549.945,302.552,4617.780]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400705"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340100204:3557.197,304.260,4613.731]"}}},
    ["2400706"] = {
        npcs = {
            {
                id = 5021,
                alias = "Npc5021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100203:3556.841,304.255,4614.912,0.000,170.350,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5062,
                alias = "Npc5062",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100202:3557.603,304.257,4614.914,0.000,204.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
