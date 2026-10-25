main_id = 72116
local tbl = {}
local n = 7211602
local v = 7211603
local n2 = 7211604
tbl[1] = 7211601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7211601"] = {},
    ["7211602"] = {},
    ["7211603"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7211604"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7211601"] = {},
    ["7211602"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/TempNPC",
                pos = "WQ_72014_Xavier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7211603"] = {},
    ["7211604"] = {}
}
