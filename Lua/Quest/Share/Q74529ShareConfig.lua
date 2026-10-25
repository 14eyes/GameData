main_id = 74529
local tbl = {}
local n = 7452902
tbl[1] = 7452901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}}}
rewind_data = {["7452901"] = {}}

quest_data = {
    ["7452901"] = {},
    ["7452902"] = {
        npcs = {
            {
                id = 1096,
                alias = "Npc1096",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15228:-2004.398,176.945,9640.688,0.000,150.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
