main_id = 19037
local tbl = {}
local n = 1903702
local v = 1903703
local n2 = 1903704
tbl[1] = 1903701
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
tbl3[1] = "133107232"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1903701"] = {}, ["1903702"] = {}, ["1903703"] = {}}

quest_data = {
    ["1903701"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_N12319_C1903702",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_C1903702_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903702"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_N12319_C1903702",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_C1903702_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1626,
                alias = "Npc1626",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N1626",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2444,
                alias = "Npc2444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N2444",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1903703"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_N12319_C1903702",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_C1903702_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1626,
                alias = "Npc1626",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N1626",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2444,
                alias = "Npc2444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N2444",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1903704"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12319,
                alias = "Npc12319",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_N12319_C1903702",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12320,
                alias = "Npc12320",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903703_C1903702_N12320",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1626,
                alias = "Npc1626",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N1626",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2444,
                alias = "Npc2444",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903701_C1903701_N2444",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903701_C1903701_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}
