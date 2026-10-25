main_id = 73512
local tbl = {}
local n = 7351201
tbl[1] = 7351202
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = "1"
tbl2[1] = "133309822"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v
rewind_data = {["7351201"] = {quest_var = {-1, 1, -1, -1, -1}}, ["7351202"] = {quest_var = {-1, 1, -1, -1, -1}}}

quest_data = {
    ["7351201"] = {
        npcs = {
            {
                id = 30342,
                alias = "Npc30342",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7351201_N30342",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7351202"] = {}
}
