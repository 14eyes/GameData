main_id = 73686
local tbl = {}
local n = 7368602
local v = 7368610
local n2 = 7368603
local n3 = 7368604
local n4 = 7368611
local n5 = 7368605
local n6 = 7368606
local n7 = 7368607
local n8 = 7368608
local n9 = 7368609
tbl[1] = 7368601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220798"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133209119"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120251"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "133209118,1"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7368601"] = {},
    ["7368603"] = {},
    ["7368604"] = {
        npcs = {
            {
                id = 3098,
                alias = "Npc3098",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368603BanmuPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7368605"] = {},
    ["7368606"] = {},
    ["7368607"] = {},
    ["7368608"] = {},
    ["7368609"] = {},
    ["7368610"] = {},
    ["7368611"] = {}
}

quest_data = {
    ["7368601"] = {
        npcs = {
            {
                id = 13070,
                alias = "Npc13070",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368601NPC1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13071,
                alias = "Npc13071",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368601NPC2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7368602"] = {},
    ["7368603"] = {
        npcs = {
            {
                id = 3098,
                alias = "Npc3098",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368603BanmuPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7368604"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368604AyakaStart",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303010_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368604QianliStart",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7368604MetXiaoyesi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7368605"] = {},
    ["7368606"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368606StageTalkAyaka",
                scene_id = 47307,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q4005505_N3030"}}
    },
    ["7368607"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7368608"] = {},
    ["7368609"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005505_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005505_N3030",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005506_N10090",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7368610"] = {
        npcs = {
            {
                id = 13070,
                alias = "Npc13070",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368601NPC1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13071,
                alias = "Npc13071",
                script = "Actor/Npc/TempNPC",
                pos = "Q7368601NPC2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7368611"] = {}
}
