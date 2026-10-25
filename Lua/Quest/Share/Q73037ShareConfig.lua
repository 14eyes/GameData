main_id = 73037
local tbl = {}
local n = 7303703
local v = 7303704
local n2 = 7303705
local n3 = 7303706
local n4 = 7303708
local n5 = 7303709
local n6 = 7303712
local n7 = 7303710
local n8 = 7303711
local n9 = 7303701
local n10 = 7303707
local n11 = 7303713
tbl[1] = 7303702
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7303701"] = {},
    ["7303702"] = {},
    ["7303707"] = {},
    ["7303710"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303708_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303711"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303708_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303712"] = {},
    ["7303713"] = {}
}

quest_data = {
    ["7303701"] = {},
    ["7303702"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7303702"}}},
    ["7303703"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303701_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303704"] = {},
    ["7303705"] = {},
    ["7303706"] = {},
    ["7303707"] = {},
    ["7303708"] = {
        npcs = {
            {
                id = 20646,
                alias = "Npc20646",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303708_N20646",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303709"] = {},
    ["7303710"] = {},
    ["7303711"] = {},
    ["7303712"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303708_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303713"] = {}
}
