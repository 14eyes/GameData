main_id = 19093
sub_ids = {1909301}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local v = {}
local str = "1"
v[1] = "120382"
v[2] = str
qUEST_EXEC_DEL_PACK_ITEM[1] = v
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str2 = ""
tbl2[1] = "133304598,133304600"
tbl2[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["1909301"] = {}}

quest_data = {
    ["1909301"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4217:2183.860,210.020,-1041.082,0.000,196.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4191:-2049.100,205.878,2585.771,0.000,133.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4193:-2047.628,205.878,2584.616,0.000,304.882,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4217:2183.860,210.020,-1041.082,0.000,196.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
