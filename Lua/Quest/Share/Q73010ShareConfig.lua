main_id = 73010
local tbl = {}
local n = 7301002
local v = 7301003
tbl[1] = 7301001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7301001"] = {}, ["7301002"] = {}}

quest_data = {
    ["7301001"] = {},
    ["7301002"] = {},
    ["7301003"] = {
        npcs = {
            {
                id = 20903,
                alias = "Npc20903",
                script = "Actor/Npc/TempNPC",
                pos = "Q7301003_N20903",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20904,
                alias = "Npc20904",
                script = "Actor/Npc/TempNPC",
                pos = "Q7301003_N20904",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20905,
                alias = "Npc20905",
                script = "Actor/Npc/TempNPC",
                pos = "Q7301003_N20905",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20906,
                alias = "Npc20906",
                script = "Actor/Npc/TempNPC",
                pos = "Q7301003_N20906",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20907,
                alias = "Npc20907",
                script = "Actor/Npc/TempNPC",
                pos = "Q7301003_N20907",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
