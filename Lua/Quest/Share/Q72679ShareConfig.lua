main_id = 72679
local tbl = {}
local n = 7267901
tbl[1] = 7267902
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl2 = {}
local str = "0"
tbl2[1] = "72264"
tbl2[2] = str
local tbl3 = {}
local str2 = "0"
tbl3[1] = "5055"
tbl3[2] = str2
local tbl4 = {}
local str3 = "0"
tbl4[1] = "72675"
tbl4[2] = str3
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl2
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[2] = tbl3
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[3] = tbl4
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
v.SERVER = server
cancel_action = v
rewind_data = {["7267901"] = {}, ["7267902"] = {}}

quest_data = {
    ["7267901"] = {},
    ["7267902"] = {
        npcs = {
            {
                id = 3159,
                alias = "Npc3159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
