main_id = 71805
local tbl = {}
local n = 7180502
local v = 7180503
local n2 = 7180504
local n3 = 7180505
local n4 = 7180506
local n5 = 7180507
tbl[1] = 7180501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100691"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "100589"
tbl4[2] = str2
local tbl5 = {}
local str3 = "1"
tbl5[1] = "100401"
tbl5[2] = str3
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
qUEST_EXEC_DEL_PACK_ITEM[2] = tbl4
qUEST_EXEC_DEL_PACK_ITEM[3] = tbl5
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7180501"] = {},
    ["7180502"] = {},
    ["7180503"] = {
        npcs = {
            {
                id = 200301,
                alias = "Npc200301",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805tianshu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200901,
                alias = "Npc200901",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805deangong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180505"] = {
        npcs = {
            {
                id = 200301,
                alias = "Npc200301",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805tianshu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200901,
                alias = "Npc200901",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805deangong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180506"] = {
        npcs = {
            {
                id = 200301,
                alias = "Npc200301",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805tianshu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200901,
                alias = "Npc200901",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805deangong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7180501"] = {},
    ["7180502"] = {
        npcs = {
            {
                id = 200301,
                alias = "Npc200301",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805tianshu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200901,
                alias = "Npc200901",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805deangong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180503"] = {},
    ["7180504"] = {
        npcs = {
            {
                id = 200301,
                alias = "Npc200301",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805tianshu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 200901,
                alias = "Npc200901",
                script = "Actor/Npc/TempNPC",
                pos = "Q71805deangong",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180505"] = {},
    ["7180506"] = {},
    ["7180507"] = {}
}
