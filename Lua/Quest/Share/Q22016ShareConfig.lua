main_id = 22016
local tbl = {}
local n = 2201602
local v = 2201603
local n2 = 2201604
local n3 = 2201605
local n4 = 2201606
local n5 = 2201609
local n6 = 2201607
local n7 = 2201608
tbl[1] = 2201601
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
    ["2201601"] = {},
    ["2201602"] = {},
    ["2201603"] = {
        npcs = {
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201604"] = {},
    ["2201605"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201607"] = {},
    ["2201608"] = {
        npcs = {
            {
                id = 20271,
                alias = "Npc20271",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_17",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201609"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2201601"] = {},
    ["2201602"] = {
        npcs = {
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201603"] = {},
    ["2201604"] = {
        npcs = {
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201605"] = {},
    ["2201606"] = {},
    ["2201607"] = {
        npcs = {
            {
                id = 20271,
                alias = "Npc20271",
                script = "Actor/Npc/TempNPC",
                pos = "Q22016_17",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201608"] = {},
    ["2201609"] = {}
}
