main_id = 23013
local tbl = {}
local n = 2301304
local v = 2301302
local n2 = 2301303
tbl[1] = 2301301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302103"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101947"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2301301"] = {},
    ["2301302"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2301303"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2301301"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2301302"] = {},
    ["2301303"] = {},
    ["2301304"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301301_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
