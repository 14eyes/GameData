main_id = 71501
local tbl = {}
local n = 7150102
local v = 7150103
local n2 = 7150104
tbl[1] = 7150101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7150101"] = {}, ["7150102"] = {}, ["7150103"] = {}, ["7150104"] = {}}

quest_data = {
    ["7150101"] = {
        npcs = {
            {
                id = 2078,
                alias = "Npc2078",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1901701_T1901701_N2078_310701434",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7150102"] = {
        npcs = {
            {
                id = 30181,
                alias = "Npc30181",
                script = "Actor/Npc/TempNPC",
                pos = "[6_600100139:1007.447,1015.942,879.091,0.000,283.789,0.000]",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7150103"] = {},
    ["7150104"] = {}
}
