main_id = 40125
sub_ids = {4012501}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_CLEAR_TIME_VAR = {}
local v = {}
local str = "1"
v[1] = "40119"
v[2] = str
qUEST_EXEC_CLEAR_TIME_VAR[1] = v
server.QUEST_EXEC_CLEAR_TIME_VAR = qUEST_EXEC_CLEAR_TIME_VAR
tbl.SERVER = server
cancel_action = tbl

quest_data = {
    ["4012501"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100121:551.505,84.340,665.774,0.000,34.446,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2606,
                alias = "Npc2606",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100123:555.167,87.250,651.004,0.000,261.679,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100119:551.193,84.406,666.812,0.000,130.684,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100120:552.209,84.366,666.985,0.000,214.439,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100124:554.105,87.250,650.766,0.000,80.537,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 5
            },
            {
                id = 13253,
                alias = "Npc13253",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100122:552.566,84.302,665.942,0.220,308.718,359.024]",
                scene_id = 10,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100125:382.407,110.384,606.184,0.000,66.330,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[10_100123:555.167,87.250,651.004,0.000,261.679,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100119:551.193,84.406,666.812,0.000,130.684,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 9
            }
        }
    }
}
