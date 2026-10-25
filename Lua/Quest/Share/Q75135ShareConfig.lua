main_id = 75135
local tbl = {}
local n = 7513502
local v = 7513503
local n2 = 7513506
local n3 = 7513504
local n4 = 7513507
local n5 = 7513505
tbl[1] = 7513501
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

rewind_data = {
    ["7513501"] = {},
    ["7513502"] = {},
    ["7513503"] = {},
    ["7513504"] = {},
    ["7513506"] = {},
    ["7513507"] = {}
}

quest_data = {
    ["7513501"] = {},
    ["7513502"] = {
        npcs = {
            {
                id = 21583,
                alias = "Npc21583",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9761:-216.854,648.679,10067.940]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513503"] = {},
    ["7513504"] = {},
    ["7513505"] = {
        transmit_points = {{point_id = 7513611, scene_id = 3, pos = "[3_10608:-305.961,1277.696,9810.532]"}}
    },
    ["7513506"] = {
        npcs = {
            {
                id = 21583,
                alias = "Npc21583",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10404:78.751,794.865,9714.752,0.000,170.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513507"] = {}
}
