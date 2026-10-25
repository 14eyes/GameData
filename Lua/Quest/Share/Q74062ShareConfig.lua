main_id = 74062
local tbl = {}
local n = 7406202
local v = 7406203
local n2 = 7406204
tbl[1] = 7406201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7406201"] = {},
    ["7406202"] = {
        npcs = {
            {
                id = 5220,
                alias = "Npc5220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6256:4423.980,150.100,4653.184,0.000,262.887,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406203"] = {
        npcs = {
            {
                id = 5220,
                alias = "Npc5220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6256:4423.980,150.100,4653.184,0.000,262.887,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406204"] = {
        npcs = {
            {
                id = 5220,
                alias = "Npc5220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6256:4423.980,150.100,4653.184,0.000,262.887,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7406201"] = {
        npcs = {
            {
                id = 5220,
                alias = "Npc5220",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6256:4423.980,150.100,4653.184,0.000,262.887,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406202"] = {},
    ["7406203"] = {
        npcs = {
            {
                id = 21102,
                alias = "Npc21102",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4926:4345.313,159.157,4639.870,0.000,9.143,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_5055:4346.265,158.024,4642.270,0.000,210.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7406204"] = {}
}
