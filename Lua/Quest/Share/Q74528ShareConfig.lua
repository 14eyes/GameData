main_id = 74528
local tbl = {}
local n = 7452802
tbl[1] = 7452801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_SET_IS_GAME_TIME_LOCKED_V2 = {{"0"}}}}
rewind_data = {["7452801"] = {}}

quest_data = {
    ["7452801"] = {},
    ["7452802"] = {
        npcs = {
            {
                id = 13790,
                alias = "Npc13790",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15226:4727.999,531.659,4262.841,0.000,45.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
