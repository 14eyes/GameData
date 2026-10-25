main_id = 74524
local tbl = {}
local n = 7452402
tbl[1] = 7452401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}}}
rewind_data = {["7452401"] = {}}

quest_data = {
    ["7452401"] = {},
    ["7452402"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15220:-3317.274,290.257,-4535.127,0.000,210.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
