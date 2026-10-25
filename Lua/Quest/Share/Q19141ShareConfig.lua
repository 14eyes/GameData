main_id = 19141
local tbl = {}
local n = 1914102
tbl[1] = 1914101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "133221078"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v
rewind_data = {["1914101"] = {}, ["1914102"] = {}}

quest_data = {
    ["1914101"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914101_C1914101_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914101_C1914101_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914101_C1914101_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914101_C1914101_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914101_C1914101_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914101_C1914101_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1914102"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914102_C1914102_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914102_C1914102_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914102_C1914102_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914102_C1914102_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914101_C1914101_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914102_C1914102_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}
