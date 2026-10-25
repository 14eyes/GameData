main_id = 76681
local tbl = {}
local n = 7668103
local v = 7668104
local n2 = 7668105
local n3 = 7668106
local n4 = 7668107
tbl[1] = 7668101
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
    ["7668101"] = {},
    ["7668103"] = {},
    ["7668104"] = {},
    ["7668105"] = {},
    ["7668106"] = {},
    ["7668107"] = {}
}

quest_data = {
    ["7668101"] = {},
    ["7668103"] = {},
    ["7668104"] = {
        npcs = {
            {
                id = 22406,
                alias = "Npc22406",
                script = "Actor/Npc/TempNPC",
                pos = "[102_221:-396.528,-95.828,-3831.081]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7668105"] = {},
    ["7668106"] = {},
    ["7668107"] = {
        npcs = {
            {
                id = 22406,
                alias = "Npc22406",
                script = "Actor/Npc/TempNPC",
                pos = "[102_221:-396.528,-95.828,-3831.081]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
