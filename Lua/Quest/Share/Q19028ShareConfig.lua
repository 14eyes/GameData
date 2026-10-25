main_id = 19028
local tbl = {}
local n = 1902802
local v = 1902809
local n2 = 1902810
local n3 = 1902811
local n4 = 1902812
local n5 = 1902813
local n6 = 1902814
local n7 = 1902815
local n8 = 1902808
local n9 = 1902807
local n10 = 1902806
local n11 = 1902805
local n12 = 1902804
local n13 = 1902803
tbl[1] = 1902801
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
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133221064"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133221067"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1902801"] = {},
    ["1902802"] = {},
    ["1902810"] = {
        npcs = {
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Shao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902813"] = {},
    ["1902814"] = {},
    ["1902809"] = {
        npcs = {
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Shao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1902801"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3004,
                alias = "Npc3004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Katherine",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902802"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3009,
                alias = "Npc3009",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Tailangwan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Shao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1902803"] = {},
    ["1902804"] = {},
    ["1902805"] = {},
    ["1902806"] = {},
    ["1902807"] = {},
    ["1902808"] = {},
    ["1902809"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3009,
                alias = "Npc3009",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Tailangwan",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902810"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902811"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Shao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "COOP1902803_Wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902812"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Shao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_Daobaotuan",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902813"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_DaobaotuanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3004,
                alias = "Npc3004",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_Katherine",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_DaobaotuanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902814"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_WulangEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3194,
                alias = "Npc3194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_TalkEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_WulangEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902815"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_WulangEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3194,
                alias = "Npc3194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19028_TalkEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19028_WulangEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
