main_id = 70030
local tbl = {}
local n = 7003002
local v = 7003003
local n2 = 7003004
local n3 = 7003006
local n4 = 7003007
local n5 = 7003008
local n6 = 7003009
local n7 = 7003010
tbl[1] = 7003001
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
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133104660,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7003001"] = {},
    ["7003002"] = {},
    ["7003003"] = {},
    ["7003004"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q70030KazuhaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7003006"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q70030KazuhaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7003007"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q70030KazuhaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7003001"] = {},
    ["7003002"] = {
        npcs = {
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70030JuzaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7003003"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q70030KazuhaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7003004"] = {},
    ["7003006"] = {},
    ["7003007"] = {},
    ["7003008"] = {},
    ["7003009"] = {},
    ["7003010"] = {}
}
