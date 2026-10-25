main_id = 19025
local tbl = {}
local n = 1902502
local v = 1902506
local n2 = 1902507
local n3 = 1902508
local n4 = 1902509
local n5 = 1902510
local n6 = 1902504
local n7 = 1902503
local n8 = 1902505
tbl[1] = 1902501
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
    ["1902501"] = {},
    ["1902502"] = {},
    ["1902503"] = {},
    ["1902504"] = {},
    ["1902505"] = {},
    ["1902506"] = {},
    ["1902507"] = {},
    ["1902508"] = {},
    ["1902509"] = {},
    ["1902510"] = {}
}

quest_data = {
    ["1902501"] = {
        npcs = {
            {
                id = 10901,
                alias = "Npc10901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10902,
                alias = "Npc10902",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10906,
                alias = "Npc10906",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Mom",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902502"] = {
        gadgets = {
            {
                id = 71700097,
                alias = "Gadget71700097",
                pos = "Q1902501Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902503"] = {
        npcs = {
            {
                id = 10901,
                alias = "Npc10901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10902,
                alias = "Npc10902",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902504cy",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902504"] = {
        npcs = {
            {
                id = 10906,
                alias = "Npc10906",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Mom",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1902501Born"}}
    },
    ["1902505"] = {
        npcs = {
            {
                id = 10901,
                alias = "Npc10901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10902,
                alias = "Npc10902",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902501Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902504cy",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902506"] = {
        npcs = {
            {
                id = 10901,
                alias = "Npc10901",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902506boy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902507"] = {
        npcs = {
            {
                id = 10902,
                alias = "Npc10902",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902506girl",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902508"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902506cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902509"] = {},
    ["1902510"] = {}
}
