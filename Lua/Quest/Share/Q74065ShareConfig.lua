main_id = 74065
local tbl = {}
local n = 7406502
local v = 7406503
tbl[1] = 7406501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7406501"] = {}, ["7406502"] = {}, ["7406503"] = {}}

quest_data = {
    ["7406501"] = {
        npcs = {
            {
                id = 21095,
                alias = "Npc21095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4940:4487.420,4.660,4618.064,0.000,60.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406502"] = {},
    ["7406503"] = {
        npcs = {
            {
                id = 21107,
                alias = "Npc21107",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4941:4703.608,-37.127,4664.249,0.000,73.972,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5218,
                alias = "Npc5218",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4941:4703.608,-37.127,4664.249,0.000,73.972,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
