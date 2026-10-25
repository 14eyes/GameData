main_id = 76125
local tbl = {}
local n = 7612502
local v = 7612504
tbl[1] = 7612501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7612501"] = {}, ["7612502"] = {}}

quest_data = {
    ["7612501"] = {},
    ["7612502"] = {
        npcs = {
            {
                id = 15903,
                alias = "Npc15903",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14016:2152.700,108.425,11215.080,0.000,293.394,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14001:2018.233,199.588,11099.010,0.000,163.978,0.000]"}}
    },
    ["7612504"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_14001:2018.233,199.588,11099.010,0.000,163.978,0.000]"}}
    }
}
