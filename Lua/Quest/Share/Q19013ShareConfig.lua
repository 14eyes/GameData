main_id = 19013
local tbl = {}
local n = 1901302
local v = 1901307
local n2 = 1901309
local n3 = 1901304
local n4 = 1901305
local n5 = 1901306
tbl[1] = 1901301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220646"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str2 = ""
tbl5[1] = "133220646"
tbl5[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["1901301"] = {},
    ["1901302"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_Eat_Down_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901305"] = {},
    ["1901306"] = {},
    ["1901307"] = {},
    ["1901309"] = {}
}

quest_data = {
    ["1901301"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_Eat_Down_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901302"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Eat_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901304"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901305"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12282,
                alias = "Npc12282",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_daobaotuan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1901306"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Player3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901307"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_Eat_Down_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710456,
                alias = "Gadget70710456",
                pos = "Q19013_Eat_UpFood1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710452,
                alias = "Gadget70710452",
                pos = "Q19013_Eat_UpFood2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710455,
                alias = "Gadget70710455",
                pos = "Q19013_Eat_UpFood3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1901309"] = {
        npcs = {
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu_Battle_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_Eat_Down_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12281,
                alias = "Npc12281",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_daobaotuan1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12282,
                alias = "Npc12282",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_daobaotuan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12283,
                alias = "Npc12283",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19013_daobaotuan3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19013_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    }
}
