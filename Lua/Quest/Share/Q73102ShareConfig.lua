main_id = 73102
local tbl = {}
local n = 7310202
local v = 7310204
local n2 = 7310205
local n3 = 7310206
local n4 = 7310207
local n5 = 7310208
local n6 = 7310209
local n7 = 7310210
local n8 = 7310211
tbl[1] = 7310201
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

rewind_data = {
    ["7310201"] = {},
    ["7310202"] = {},
    ["7310204"] = {
        npcs = {
            {
                id = 4225,
                alias = "Npc4225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_a",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4226,
                alias = "Npc4226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_b",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4227,
                alias = "Npc4227",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_c",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4228,
                alias = "Npc4228",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_d",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7310205"] = {},
    ["7310206"] = {},
    ["7310207"] = {},
    ["7310208"] = {},
    ["7310209"] = {},
    ["7310210"] = {},
    ["7310211"] = {}
}

quest_data = {
    ["7310201"] = {},
    ["7310202"] = {
        npcs = {
            {
                id = 4225,
                alias = "Npc4225",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_a",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4226,
                alias = "Npc4226",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_b",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4227,
                alias = "Npc4227",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_c",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4228,
                alias = "Npc4228",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "wq73077_mgd_d",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7310204"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "wq73101_player"}}},
    ["7310205"] = {},
    ["7310206"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "wq73101_player"}}},
    ["7310207"] = {},
    ["7310208"] = {transmit_points = {{point_id = 3, scene_id = 3, pos = "wq73101_player"}}},
    ["7310209"] = {},
    ["7310210"] = {transmit_points = {{point_id = 4, scene_id = 3, pos = "wq73101_player"}}},
    ["7310211"] = {}
}
