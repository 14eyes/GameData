main_id = 41336
local tbl = {}
local n = 4133601
local v = 4133602
local n2 = 4133603
local n3 = 4133604
local n4 = 4133605
local n5 = 4133606
local n6 = 4133607
local n7 = 4133608
local n8 = 4133609
tbl[1] = 4133610
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
    ["4133601"] = {},
    ["4133602"] = {},
    ["4133603"] = {},
    ["4133604"] = {},
    ["4133606"] = {},
    ["4133608"] = {},
    ["4133609"] = {
        npcs = {
            {
                id = 203201,
                alias = "Npc203201",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_BiBo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4133601"] = {},
    ["4133602"] = {},
    ["4133603"] = {},
    ["4133604"] = {
        npcs = {
            {
                id = 201701,
                alias = "Npc201701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_LinLin01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200401,
                alias = "Npc200401",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_XiaoZongGuan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133605"] = {},
    ["4133606"] = {
        npcs = {
            {
                id = 201701,
                alias = "Npc201701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_LinLin03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 204001,
                alias = "Npc204001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_DeGui",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133607"] = {},
    ["4133608"] = {
        npcs = {
            {
                id = 201701,
                alias = "Npc201701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_LinLin05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 203201,
                alias = "Npc203201",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_BiBo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133609"] = {
        npcs = {
            {
                id = 203201,
                alias = "Npc203201",
                script = "Actor/Npc/TempNPC",
                pos = "Q41336_BiBo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133610"] = {}
}
