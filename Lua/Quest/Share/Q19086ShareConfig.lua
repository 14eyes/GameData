main_id = 19086
local tbl = {}
local n = 1908603
local v = 1908604
local n2 = 1908608
local n3 = 1908606
local n4 = 1908607
local n5 = 1908605
local n6 = 1908602
tbl[1] = 1908601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1908601"] = {},
    ["1908603"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908606"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908607"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1908601"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908602"] = {},
    ["1908603"] = {},
    ["1908604"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908605"] = {},
    ["1908606"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908607"] = {},
    ["1908608"] = {
        npcs = {
            {
                id = 140901,
                alias = "Npc140901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908601selius",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
