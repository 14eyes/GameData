main_id = 11021
local tbl = {}
local n = 1102102
local v = 1102107
local n2 = 1102108
local n3 = 1102103
local n4 = 1102104
local n5 = 1102109
local n6 = 1102105
local n7 = 1102106
tbl[1] = 1102101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1102101"] = {},
    ["1102102"] = {},
    ["1102103"] = {},
    ["1102104"] = {},
    ["1102105"] = {},
    ["1102106"] = {},
    ["1102107"] = {},
    ["1102108"] = {}
}

quest_data = {
    ["1102101"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10280,
                alias = "Npc10280",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10281,
                alias = "Npc10281",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Yuren1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {{id = 71700097, alias = "Gad1", pos = "Q11021Gadget1", scene_id = 3, room_id = 0, data_index = 1}}
    },
    ["1102102"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Yuren1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1102103"] = {
        gadgets = {{id = 71700097, alias = "Gad1", pos = "Q11021Gadget1", scene_id = 3, room_id = 0, data_index = 1}}
    },
    ["1102104"] = {
        gadgets = {
            {
                id = 70300118,
                alias = "Q11021Gad2",
                pos = "Q11021Gadget2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1102105"] = {
        gadgets = {{id = 71700097, alias = "Gad3", pos = "Q11021Gadget3", scene_id = 3, room_id = 0, data_index = 1}}
    },
    ["1102106"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021ZL2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Girl3",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Yuren3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1102107"] = {
        gadgets = {
            {
                id = 70300070,
                alias = "Q11021Compass",
                pos = "Q11021Gadget1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1102108"] = {}
}
