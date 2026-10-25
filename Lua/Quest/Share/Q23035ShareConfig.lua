main_id = 23035
local tbl = {}
local n = 2303502
local v = 2303503
local n2 = 2303504
local n3 = 2303505
local n4 = 2303506
tbl[1] = 2303501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2303501"] = {},
    ["2303503"] = {},
    ["2303504"] = {
        gadgets = {
            {
                id = 70710787,
                alias = "Gadget70710787",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2303506"] = {},
    ["2303505"] = {
        gadgets = {
            {
                id = 70710787,
                alias = "Gadget70710787",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2303501"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303501_N12717",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2303502"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N12717_Cyno",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303506_Player",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["2303503"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N12717_Cyno",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N1058",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710787,
                alias = "Gadget70710787",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2303504"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N12717_Cyno",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N1058",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710787,
                alias = "Gadget70710787",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2303505"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N12717_Cyno",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303502_N1058",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13476,
                alias = "Npc13476",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710787,
                alias = "Gadget70710787",
                pos = "Q2303505_Camera_1074",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2303506"] = {
        npcs = {
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303505_camera",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q2303505_CynoCam",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12717,
                alias = "Npc12717",
                script = "Actor/Npc/TempNPC",
                pos = "Fuben_sit",
                scene_id = 1074,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Cyno_sit",
                scene_id = 1074,
                room_id = 1,
                data_index = 4
            }
        }
    }
}
