main_id = 19012
local tbl = {}
local n = 1901202
local v = 1901203
local n2 = 1901206
local n3 = 1901207
local n4 = 1901208
local n5 = 1901204
local n6 = 1901205
tbl[1] = 1901201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133221065"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133221063"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1901201"] = {}, ["1901202"] = {}, ["1901203"] = {}, ["1901204"] = {}, ["1901205"] = {}}

quest_data = {
    ["1901201"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Player1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901202"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Player4_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901203"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 70710519,
                alias = "Gadget70710519",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710432,
                alias = "Gadget70710432",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901204"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901205"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19012_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710519,
                alias = "Gadget70710519",
                pos = "Q19012_SayuBox_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901206"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901207"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901208"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19012_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
