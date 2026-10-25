main_id = 77127
local tbl = {}
local n = 7712705
local v = 7712702
local n2 = 7712703
local n3 = 7712704
local n4 = 7712706
tbl[1] = 7712701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7712701"] = {},
    ["7712702"] = {},
    ["7712703"] = {},
    ["7712704"] = {},
    ["7712705"] = {},
    ["7712706"] = {}
}

quest_data = {
    ["7712701"] = {},
    ["7712702"] = {
        npcs = {
            {
                id = 20985,
                alias = "Npc20985",
                script = "Actor/Npc/TempNPC",
                pos = "[3_19149:9075.110,267.480,6160.353]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7712703"] = {
        npcs = {
            {
                id = 22553,
                alias = "Npc22553",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17319:9069.943,266.468,6159.335,0.000,41.213,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7712704"] = {
        npcs = {
            {
                id = 22553,
                alias = "Npc22553",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17319:9069.943,266.468,6159.335,0.000,41.213,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7712705"] = {
        npcs = {
            {
                id = 22439,
                alias = "Npc22439",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18586:9074.965,266.387,6160.551,0.000,333.345,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7712706"] = {}
}
