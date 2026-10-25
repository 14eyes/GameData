main_id = 3027
local tbl = {}
local n = 302703
local v = 302701
tbl[1] = 302702
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["302701"] = {}, ["302702"] = {}, ["302703"] = {}}

quest_data = {
    ["302701"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q302617_T302617_Q302701_T302701_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["302702"] = {
        npcs = {
            {
                id = 12952,
                alias = "Npc12952",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q302508_T302508_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["302703"] = {}
}
