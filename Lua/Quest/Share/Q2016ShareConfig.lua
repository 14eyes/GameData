main_id = 2016
local tbl = {}
local n = 201606
local v = 201608
local n2 = 201602
local n3 = 201607
local n4 = 201603
local n5 = 201604
local n6 = 201605
local n7 = 201609
tbl[1] = 201601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201601"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201601Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201602"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201603"] = {},
    ["201604"] = {},
    ["201605"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201605Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201606"] = {},
    ["201607"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["201601"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201601Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q201601Trans"}}
    },
    ["201602"] = {},
    ["201603"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201604"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201605"] = {},
    ["201606"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201601Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201607"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201608"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201604Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201609"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201605Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
