main_id = 73302
local tbl = {}
local n = 7330202
tbl[1] = 7330201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7330201"] = {}, ["7330202"] = {}}

quest_data = {
    ["7330201"] = {},
    ["7330202"] = {
        npcs = {
            {
                id = 20643,
                alias = "Npc20643",
                script = "Actor/Npc/TempNPC",
                pos = "Q7322402_N20643",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
