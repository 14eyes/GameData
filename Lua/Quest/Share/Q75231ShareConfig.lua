main_id = 75231
local tbl = {}
local n = 7523102
tbl[1] = 7523101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7523101"] = {}}

quest_data = {
    ["7523101"] = {
        npcs = {
            {
                id = 6522,
                alias = "Npc6522",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12532:97.421,270.982,13781.650,0.000,86.710,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13220:53.500,224.000,13755.500,0.000,106.000,0.000]"}}
    },
    ["7523102"] = {}
}
