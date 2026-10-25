main_id = 19133
local tbl = {}
local n = 1913302
local v = 1913303
local n2 = 1913304
local n3 = 1913305
tbl[1] = 1913301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101605"}, {"101607"}}}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101605"}, {"101607"}}}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "1913101"
tbl3[2] = str
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl3
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913301"] = {},
    ["1913302"] = {
        npcs = {
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1913303"] = {
        npcs = {
            {
                id = 12298,
                alias = "Npc12298",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12299,
                alias = "Npc12299",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12300,
                alias = "Npc12300",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913304"] = {
        npcs = {
            {
                id = 12298,
                alias = "Npc12298",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12299,
                alias = "Npc12299",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12300,
                alias = "Npc12300",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913305"] = {}
}

quest_data = {
    ["1913301"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913302"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12298,
                alias = "Npc12298",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12299,
                alias = "Npc12299",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12300,
                alias = "Npc12300",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1913303"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12301,
                alias = "Npc12301",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12302,
                alias = "Npc12302",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913304"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12301,
                alias = "Npc12301",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12302,
                alias = "Npc12302",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913301_C1913301Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913305"] = {
        npcs = {
            {
                id = 508,
                alias = "Coop_NingguangCustumeFloral",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913305_C1913305Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12298,
                alias = "Npc12298",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12299,
                alias = "Npc12299",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12300,
                alias = "Npc12300",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913302_C1913302KidC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12301,
                alias = "Npc12301",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantA",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12302,
                alias = "Npc12302",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913303_C1913303MerchantB",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913305_C1913305Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    }
}
