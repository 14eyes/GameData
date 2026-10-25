main_id = 74030
local tbl = {}
local n = 7403002
local v = 7403003
local n2 = 7403004
tbl[1] = 7403001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7403001"] = {},
    ["7403002"] = {},
    ["7403003"] = {
        npcs = {
            {
                id = 5252,
                alias = "Npc5252",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4603:4373.380,184.186,4785.289,0.000,6.886,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403004"] = {
        npcs = {
            {
                id = 5252,
                alias = "Npc5252",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4603:4373.380,184.186,4785.289,0.000,6.886,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7403001"] = {
        npcs = {
            {
                id = 5214,
                alias = "Npc5214",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4601:4455.977,153.600,4688.064,0.000,150.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403002"] = {
        npcs = {
            {
                id = 5252,
                alias = "Npc5252",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4603:4373.380,184.186,4785.289,0.000,6.886,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403003"] = {},
    ["7403004"] = {}
}
