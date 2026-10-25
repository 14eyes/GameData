main_id = 23039
local tbl = {}
local n = 2303902
local v = 2303903
local n2 = 2303904
local n3 = 2303905
tbl[1] = 2303901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133308064"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2303901"] = {},
    ["2303904"] = {
        npcs = {
            {
                id = 4422,
                alias = "Npc4422",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyA_Ending",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4423,
                alias = "Npc4423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_RacingEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2303905"] = {
        npcs = {
            {
                id = 4422,
                alias = "Npc4422",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyA_Ending",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4423,
                alias = "Npc4423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_RacingEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2303901"] = {
        npcs = {
            {
                id = 4422,
                alias = "Npc4422",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4423,
                alias = "Npc4423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2303902"] = {
        npcs = {
            {
                id = 4422,
                alias = "Npc4422",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyA_Ending",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4423,
                alias = "Npc4423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23039_BoyB_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q23039_Player_Start"}}
    },
    ["2303903"] = {},
    ["2303904"] = {},
    ["2303905"] = {}
}
