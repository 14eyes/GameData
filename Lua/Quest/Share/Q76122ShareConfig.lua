main_id = 76122
local tbl = {}
local n = 7612205
local v = 7612204
local n2 = 7612202
local n3 = 7612203
local n4 = 7612206
tbl[1] = 7612201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNLOCK_MIRROR_AVATAR_TEAM = {{}}}
local qUEST_EXEC_LOCK_POINT = {}
local tbl3 = {}
local str = "1823"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_LOCK_POINT[1] = tbl3
server.QUEST_EXEC_LOCK_POINT = qUEST_EXEC_LOCK_POINT
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7612201"] = {},
    ["7612202"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20325_2:267.375,43.900,342.833]",
                scene_id = 20325,
                room_id = 0,
                data_index = 1
            }
        },
        avatar = {
            offline_dungeon_id = 1298,
            scene_id = 20325,
            pos = "[20325_4:268.390,43.900,352.008,0.000,248.985,0.000]"
        }
    },
    ["7612203"] = {},
    ["7612204"] = {},
    ["7612205"] = {},
    ["7612206"] = {}
}

quest_data = {
    ["7612201"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300034:2138.565,108.378,11193.690,0.000,117.940,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7612202"] = {},
    ["7612203"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20325_2:267.375,43.900,342.833]",
                scene_id = 20325,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7612204"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[20325_2:267.375,43.900,342.833]",
                scene_id = 20325,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7612205"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1298, pos = "[20325_1:268.341,43.900,351.894]"}}
    },
    ["7612206"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300034:2138.565,108.378,11193.690,0.000,117.940,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15380,
                alias = "Npc15380",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300088:2139.816,108.043,11193.710,0.000,188.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_360300089:2139.918,108.600,11191.250]"}}
    }
}
