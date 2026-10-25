main_id = 19067
local tbl = {}
local n = 1906702
tbl[1] = 1906701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local v = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl2 = {}
local str = ""
tbl2[1] = "133004448"
tbl2[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
v.SERVER = server
cancel_action = v

rewind_data = {
    ["1906701"] = {
        npcs = {
            {
                id = 140101,
                alias = "Npc140101",
                script = "Actor/Npc/TempNPC",
                pos = "Q19069Beiya",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906702"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067BeiyaNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140101,
                alias = "Npc140101",
                script = "Actor/Npc/TempNPC",
                pos = "Q19069Beiya",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1906701"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067BeiyaNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140101,
                alias = "Npc140101",
                script = "Actor/Npc/TempNPC",
                pos = "Q19069Beiya",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1906702"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19067BeiyaNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 140101,
                alias = "Npc140101",
                script = "Actor/Npc/TempNPC",
                pos = "Q19069Beiya",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
