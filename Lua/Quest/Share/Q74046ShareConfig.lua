main_id = 74046
local tbl = {}
local n = 7404602
local v = 7404603
tbl[1] = 7404601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7404601"] = {}, ["7404603"] = {}}

quest_data = {
    ["7404601"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_4661:4465.670,121.811,4557.625,0.000,80.000,0.000]"}}
    },
    ["7404602"] = {
        npcs = {
            {
                id = 21393,
                alias = "Npc21393",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4660:4468.459,121.820,4558.232,0.000,259.318,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7404603"] = {}
}
