main_id = 1020
local tbl = {}
local n = 102002
local v = 102003
local n2 = 102004
local n3 = 102005
local n4 = 102006
local n5 = 102007
local n6 = 102008
tbl[1] = 102001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["102001"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102001Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102001Born"}}
}

quest_data["102002"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102002Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102002Born"}}
}

quest_data["102003"] = {
    gadgets = {
        {
            id = 71700097,
            pos = "Q102003test",
            alias = "Q102003test",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["102004"] = {
    npcs = {
        {
            id = 10262,
            alias = "Npc10262",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army1",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 10263,
            alias = "Npc10263",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army2",
            scene_id = 3,
            data_index = 1
        },
        {
            id = 10264,
            alias = "Npc10264",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Army4",
            scene_id = 3,
            data_index = 2
        },
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102004Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102004Born"}}
}

quest_data["102006"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102006Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102006born"}}
}

quest_data["102007"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102007Paimon",
            scene_id = 3,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q102007born"}}
}
