main_id = 76222
local tbl = {}
local n = 7622202
local v = 7622203
tbl[1] = 7622201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201205005,1"
tbl3[1] = "1205"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7622201"] = {}, ["7622203"] = {}}

quest_data = {
    ["7622201"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_133:-6.825,0.325,-48.233,0.000,182.099,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7622202"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_133:-6.825,0.325,-48.233,0.000,182.099,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7622203"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_133:-6.825,0.325,-48.233,0.000,182.099,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
