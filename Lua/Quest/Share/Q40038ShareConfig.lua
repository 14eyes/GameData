main_id = 40038
sub_ids = {4003801}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local tbl = {}
local v = {}
local quest_var = {}
local n = -1
local n2 = -1
local n3 = -1
local n4 = -1
quest_var[1] = 1
quest_var[2] = n
quest_var[3] = n2
quest_var[4] = n3
quest_var[5] = n4
v.quest_var = quest_var
tbl["4003801"] = v
rewind_data = tbl

quest_data = {
    ["4003801"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q4003507_N10232_310701347",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
