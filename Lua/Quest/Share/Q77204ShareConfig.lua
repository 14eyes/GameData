main_id = 77204
local tbl = {}
local n = 7720404
local v = 7720402
local n2 = 7720403
tbl[1] = 7720401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7720401"] = {}, ["7720402"] = {}, ["7720403"] = {}, ["7720404"] = {}}

quest_data = {
    ["7720401"] = {
        npcs = {
            {
                id = 7591,
                alias = "Npc7591",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800034:8472.955,224.382,7791.053,0.000,167.894,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800033:8473.241,224.381,7789.944,0.000,349.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1340, pos = "[20372_1:8478.184,224.423,7792.213]"}}
    },
    ["7720402"] = {
        npcs = {
            {
                id = 7591,
                alias = "Npc7591",
                script = "Actor/Npc/TempNPC",
                pos = "[20372_2:8479.321,224.418,7792.389,0.000,260.301,0.000]",
                scene_id = 20372,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800033:8473.241,224.381,7789.944,0.000,349.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7591,
                alias = "Npc7591_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800034:8472.955,224.382,7791.053,0.000,167.894,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7720403"] = {
        npcs = {
            {
                id = 7591,
                alias = "Npc7591",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800034:8472.955,224.382,7791.053,0.000,167.894,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800033:8473.241,224.381,7789.944,0.000,349.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7720404"] = {
        npcs = {
            {
                id = 7591,
                alias = "Npc7591",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800034:8472.955,224.382,7791.053,0.000,167.894,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[3_370800033:8473.241,224.381,7789.944,0.000,349.728,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
