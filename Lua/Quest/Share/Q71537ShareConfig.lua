main_id = 71537
local tbl = {}
local n = 7153702
local v = 7153703
local n2 = 7153704
tbl[1] = 7153701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7153701"] = {},
    ["7153702"] = {},
    ["7153703"] = {
        npcs = {
            {
                id = 30683,
                alias = "Npc30683",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153704"] = {
        npcs = {
            {
                id = 30683,
                alias = "Npc30683",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153701"] = {},
    ["7153702"] = {
        npcs = {
            {
                id = 30683,
                alias = "Npc30683",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7153703"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153704"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702027:-473.325,209.120,341.961,0.000,184.441,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
