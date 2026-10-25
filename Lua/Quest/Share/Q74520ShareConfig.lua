main_id = 74520
local tbl = {}
local n = 7452002
tbl[1] = 7452001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}}}
rewind_data = {["7452001"] = {}}

quest_data = {
    ["7452001"] = {},
    ["7452002"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15216:1386.232,322.136,-1190.113,0.000,120.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
