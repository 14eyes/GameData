main_id = 10004
local tbl = {}
local n = 1000404
local v = 1000402
local n2 = 1000403
local n3 = 1000405
local n4 = 1000407
local n5 = 1000406
tbl[1] = 1000401
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
    ["1000401"] = {},
    ["1000402"] = {},
    ["1000403"] = {},
    ["1000404"] = {},
    ["1000406"] = {},
    ["1000407"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_2:451.542,56.650,6021.414]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1000401"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13649:2191.674,211.988,-875.241]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1278, pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]"}}
    },
    ["1000402"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1278, pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]"}}
    },
    ["1000403"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000404"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000405"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_1:456.223,37.757,6063.426,0.000,193.437,0.000]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000406"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "[20300_2:451.542,56.650,6021.414]",
                scene_id = 20300,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000407"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1278, pos = "[20300_2:451.542,56.650,6021.414]"}}
    }
}
