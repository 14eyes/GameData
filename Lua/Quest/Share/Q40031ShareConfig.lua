main_id = 40031
local tbl = {}
local n = 4003102
local v = 4003103
local n2 = 4003110
local n3 = 4003109
local n4 = 4003104
local n5 = 4003105
local n6 = 4003106
local n7 = 4003107
local n8 = 4003108
tbl[1] = 4003101
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
    ["4003101"] = {},
    ["4003102"] = {},
    ["4003103"] = {},
    ["4003104"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40031Longer02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003105"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40031Longer02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003106"] = {},
    ["4003107"] = {},
    ["4003108"] = {}
}

quest_data = {
    ["4003101"] = {},
    ["4003102"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40031Longer01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003103"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40031Longer02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003104"] = {},
    ["4003105"] = {},
    ["4003106"] = {},
    ["4003107"] = {transmit_points = {{point_id = 4003107, scene_id = 3, pos = "Q40031Player03"}}},
    ["4003108"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40031Longer03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003109"] = {},
    ["4003110"] = {}
}
