main_id = 77010
local tbl = {}
local n = 7701002
tbl[1] = 7701001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7701001"] = {}, ["7701002"] = {}}

quest_data = {
    ["7701001"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200066:9522.879,390.288,6559.870,0.000,289.894,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_371200066:9522.879,390.288,6559.870,0.000,289.894,0.000]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7701002"] = {}
}
