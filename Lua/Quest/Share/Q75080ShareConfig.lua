main_id = 75080
local tbl = {}
local n = 7508002
tbl[1] = 7508001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7508001"] = {}, ["7508002"] = {}}

quest_data = {
    ["7508001"] = {},
    ["7508002"] = {
        npcs = {
            {
                id = 21567,
                alias = "Npc21567",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100039:-1892.436,159.848,8101.717]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
