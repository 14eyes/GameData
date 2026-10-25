main_id = 19132
local tbl = {}
local n = 1913209
local v = 1913208
local n2 = 1913201
local n3 = 1913202
local n4 = 1913203
local n5 = 1913204
local n6 = 1913205
local n7 = 1913206
tbl[1] = 1913207
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
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101000"}, {"101607"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201057005,1"
tbl3[1] = "1057"
tbl3[2] = str
local tbl4 = {}
local str2 = "201057004,1"
tbl4[1] = "1057"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl5 = {}
local str3 = "0"
tbl5[1] = "1913101"
tbl5[2] = str3
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl5
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913202"] = {},
    ["1913203"] = {},
    ["1913206"] = {},
    ["1913207"] = {},
    ["1913208"] = {},
    ["1913205"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1913201"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913202"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913202Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913202Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913203"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12310,
                alias = "Npc12310",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913203ClosetManager",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1913204"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12310,
                alias = "Npc12310",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913203ClosetManager",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12311,
                alias = "Npc12311",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang02",
                scene_id = 1057,
                room_id = 1,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1913205"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12310,
                alias = "Npc12310",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913203ClosetManager",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12311,
                alias = "Npc12311",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang02",
                scene_id = 1057,
                room_id = 1,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1913206"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913206Ningguang",
                scene_id = 1034,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12297,
                alias = "Npc12297",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913206Merchant",
                scene_id = 1034,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913206Ningguang",
                scene_id = 1034,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1913207"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913208"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913209"] = {}
}
