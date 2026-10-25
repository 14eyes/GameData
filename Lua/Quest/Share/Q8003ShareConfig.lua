main_id = 8003
local tbl = {}
local n = 800306
local v = 800307
local n2 = 800302
local n3 = 800308
local n4 = 800309
local n5 = 800303
local n6 = 800310
local n7 = 800304
local n8 = 800305
local n9 = 800311
tbl[1] = 800301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["800301"] = {},
    ["800302"] = {},
    ["800303"] = {},
    ["800304"] = {},
    ["800305"] = {},
    ["800306"] = {},
    ["800307"] = {},
    ["800308"] = {},
    ["800309"] = {},
    ["800310"] = {},
    ["800311"] = {}
}

quest_data = {
    ["800301"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Dainsleif",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800302"] = {},
    ["800303"] = {},
    ["800304"] = {},
    ["800305"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Dainsleif",
                scene_id = 20105,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1025,
                alias = "Npc1025",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Traveler",
                scene_id = 20105,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Traveler",
                scene_id = 20105,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003AbyssInvoker",
                scene_id = 20105,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1026,
                alias = "Npc1026",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Traveler",
                scene_id = 20105,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["800306"] = {},
    ["800307"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Dainsleif2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 71700200,
                alias = "Gadget71700200",
                pos = "Q8003GuardianCore",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800308"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q8000DungeonEntry",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800309"] = {},
    ["800310"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003Dainsleif",
                scene_id = 20105,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10916,
                alias = "Npc10916",
                script = "Actor/Npc/TempNPC",
                pos = "Q8003AbyssInvoker",
                scene_id = 20105,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["800311"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q8003Dainsleif",
                scene_id = 20105,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
