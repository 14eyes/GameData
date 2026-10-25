main_id = 74191
local tbl = {}
local n = 7419101
local v = 7419102
local n2 = 7419103
tbl[1] = 7419104
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7419102"] = {}, ["7419104"] = {}}

quest_data = {
    ["7419101"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1197, pos = "[20211_6:1547.469,-493.739,3564.672,0.000,30.733,0.000]"}}
    },
    ["7419102"] = {
        npcs = {
            {
                id = 21355,
                alias = "Npc21355",
                script = "Actor/Npc/TempNPC",
                pos = "[20211_7:1549.323,-493.739,3568.538,0.000,212.307,0.000]",
                scene_id = 20211,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21462,
                alias = "Npc21462",
                script = "Actor/Npc/TempNPC",
                pos = "[20211_9:1483.575,-417.893,3567.287,0.000,245.201,0.000]",
                scene_id = 20211,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7419103"] = {
        npcs = {
            {
                id = 21355,
                alias = "Npc21355",
                script = "Actor/Npc/TempNPC",
                pos = "[20211_7:1549.323,-493.739,3568.538,0.000,212.307,0.000]",
                scene_id = 20211,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21462,
                alias = "Npc21462",
                script = "Actor/Npc/TempNPC",
                pos = "[20211_9:1483.575,-417.893,3567.287,0.000,245.201,0.000]",
                scene_id = 20211,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 11, pos = "[11_11:1560.659,574.934,4325.915]"}}
    },
    ["7419104"] = {}
}
