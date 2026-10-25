main_id = 19050
local tbl = {}
local n = 1905002
local v = 1905003
local n2 = 1905004
tbl[1] = 1905001
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
tbl3[1] = "133113006"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1905001"] = {}, ["1905002"] = {}, ["1905003"] = {}, ["1905004"] = {}}

quest_data = {
    ["1905001"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHuiStand01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2434,
                alias = "Npc2434",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Huixing01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2440,
                alias = "Npc2440",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Juza01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2437,
                alias = "Npc2437",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101XuLiushi01",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 2439,
                alias = "Npc2439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101YanHuiStand04",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1905002"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905003"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2433,
                alias = "Npc2433",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP10240101Juza02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905004"] = {
        npcs = {
            {
                id = 506,
                alias = "Coop_Beidou",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou12",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "COOP10240101Beidou12",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
