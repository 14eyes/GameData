main_id = 71117
local tbl = {}
local n = 7111702
local v = 7111703
tbl[1] = 7111701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7111701"] = {},
    ["7111702"] = {},
    ["7111703"] = {
        npcs = {
            {
                id = 21312,
                alias = "Npc21312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500098:2648.014,348.100,2255.397]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7111701"] = {},
    ["7111702"] = {
        npcs = {
            {
                id = 21312,
                alias = "Npc21312",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500098:2648.014,348.100,2255.397]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7111703"] = {}
}
