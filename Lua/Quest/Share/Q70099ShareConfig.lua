main_id = 70099
local tbl = {}
local n = 7009902
local v = 7009903
local n2 = 7009904
tbl[1] = 7009901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7009901"] = {}, ["7009904"] = {}}

quest_data = {
    ["7009901"] = {
        npcs = {
            {
                id = 1218,
                alias = "Hoffman_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900017:3593.932,236.786,-246.534,0.000,294.522,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22312,
                alias = "Npc22312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900005:3592.397,236.627,-246.353,0.000,58.034,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7009902"] = {
        npcs = {
            {
                id = 1218,
                alias = "Hoffman_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900017:3593.932,236.786,-246.534,0.000,294.522,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22314,
                alias = "Npc22314",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900019:3593.570,236.862,-244.715,0.000,223.083,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 22312,
                alias = "Npc22312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900005:3592.397,236.627,-246.353,0.000,58.034,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1748,
                alias = "Npc1748",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300900001:3593.775,236.832,-245.531,0.000,241.139,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_300900018:3592.243,236.660,-245.291,0.000,105.494,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1329, pos = "[20348_1:3864.031,445.160,-551.247,0.000,195.940,0.000]"}}
    },
    ["7009903"] = {
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_300900018:3592.243,236.660,-245.291,0.000,105.494,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1329, pos = "[20348_1:3864.031,445.160,-551.247,0.000,195.940,0.000]"}}
    },
    ["7009904"] = {
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_300900018:3592.243,236.660,-245.291,0.000,105.494,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1329, pos = "[20348_1:3864.031,445.160,-551.247,0.000,195.940,0.000]"}}
    }
}
