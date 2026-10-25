main_id = 8000
local tbl = {}
local n = 800001
local v = 800002
local n2 = 800003
local n3 = 800004
local n4 = 800005
local n5 = 800009
local n6 = 800006
local n7 = 800008
local n8 = 800007
tbl[1] = 800010
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["800001"] = {},
    ["800002"] = {},
    ["800003"] = {},
    ["800004"] = {
        npcs = {
            {
                id = 10910,
                alias = "Npc10910",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Thoarder",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800005"] = {
        npcs = {
            {
                id = 10910,
                alias = "Npc10910",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Thoarder",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10921,
                alias = "Npc10921",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Invisible",
                scene_id = 20104,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["800006"] = {},
    ["800007"] = {},
    ["800008"] = {},
    ["800009"] = {},
    ["800010"] = {}
}

quest_data = {
    ["800001"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Ganyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 201601,
                alias = "Npc201601",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Lan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q8000Lan",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["800002"] = {},
    ["800003"] = {
        npcs = {
            {
                id = 10910,
                alias = "Npc10910",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Thoarder",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800004"] = {
        npcs = {
            {
                id = 10921,
                alias = "Npc10921",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000Invisible",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800005"] = {
        npcs = {
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000AbyssInvoker",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800006"] = {},
    ["800007"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q8001Avatar"}}},
    ["800008"] = {
        npcs = {
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000AbyssInvoker",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800009"] = {
        npcs = {
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8000AbyssInvoker",
                scene_id = 20104,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["800010"] = {}
}
