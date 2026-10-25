main_id = 40157
local tbl = {}
local n = 4015701
local v = 4015702
local n2 = 4015703
local n3 = 4015706
local n4 = 4015705
tbl[1] = 4015704
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
    ["4015701"] = {},
    ["4015702"] = {},
    ["4015703"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_321000270:-3594.754,208.725,-905.030,0.000,17.024,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4015704"] = {},
    ["4015705"] = {
        npcs = {
            {
                id = 30532,
                alias = "Npc30532",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_321000254:-3612.493,199.310,-881.232,0.000,143.258,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4015706"] = {}
}

quest_data = {
    ["4015701"] = {},
    ["4015702"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "[3_321000270:-3594.754,208.725,-905.030,0.000,17.024,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30532,
                alias = "Npc30532",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_321000271:-3594.325,208.669,-902.709,0.000,179.510,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4015703"] = {
        npcs = {
            {
                id = 30532,
                alias = "Npc30532",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_321000271:-3594.325,208.669,-902.709,0.000,179.510,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4015704"] = {},
    ["4015705"] = {
        npcs = {
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "[3_321000267:-3615.737,201.872,-906.978]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4015706"] = {
        npcs = {
            {
                id = 30532,
                alias = "Npc30532",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_321000254:-3612.493,199.310,-881.232,0.000,143.258,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
