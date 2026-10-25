main_id = 71534
local tbl = {}
local n = 7153402
local v = 7153403
local n2 = 7153404
tbl[1] = 7153401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7153401"] = {},
    ["7153402"] = {},
    ["7153403"] = {
        npcs = {
            {
                id = 30680,
                alias = "Npc30680",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153404"] = {
        npcs = {
            {
                id = 30680,
                alias = "Npc30680",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153401"] = {},
    ["7153402"] = {
        npcs = {
            {
                id = 30680,
                alias = "Npc30680",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7153403"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153404"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702024:-472.659,209.120,341.335,0.000,174.230,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
