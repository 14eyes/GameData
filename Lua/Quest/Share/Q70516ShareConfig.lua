main_id = 70516
local tbl = {}
local n = 7051601
local v = 7051602
local n2 = 7051606
local n3 = 7051607
local n4 = 7051603
local n5 = 7051604
local n6 = 7051605
tbl[1] = 7051608
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001100"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002154"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl5 = {}
local str3 = "201018003,1"
tbl5[1] = "1018"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl6 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl7 = {}
local str4 = ""
tbl7[1] = "133001100"
tbl7[2] = str4
local tbl8 = {}
local str5 = ""
tbl8[1] = "133002154"
tbl8[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl7
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl8
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl9 = {}
local str6 = "201018003,1"
tbl9[1] = "1018"
tbl9[2] = str6
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl9
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl6.SERVER = server2
cancel_action = tbl6
rewind_data = {["7051605"] = {}, ["7051608"] = {}}

quest_data = {
    ["7051601"] = {},
    ["7051602"] = {
        npcs = {
            {
                id = 30194,
                alias = "Npc30194",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051203_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051603"] = {},
    ["7051604"] = {
        npcs = {
            {
                id = 30198,
                alias = "Npc30198",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterToQinCostumeWic_Pos",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 30199,
                alias = "Npc30199",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterToFarga_Pos",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 30200,
                alias = "Npc30200",
                script = "Actor/Npc/TempNPC",
                pos = "T7051613_N30200",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30201,
                alias = "Npc30201",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterToAerith_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30202,
                alias = "Npc30202",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterToAlbedo_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 30195,
                alias = "Npc30195",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterFromKaeya_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 6
            },
            {
                id = 30196,
                alias = "Npc30196",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterFromKaeya2_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 7
            },
            {
                id = 30197,
                alias = "Npc30197",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_LetterFromKaeya3_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 8
            },
            {
                id = 30242,
                alias = "Npc30242",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051303_SendLetter_Pos",
                scene_id = 1018,
                room_id = 1,
                data_index = 9
            }
        },
        gadgets = {
            {
                id = 70710774,
                alias = "Gadget70710774",
                pos = "Q7051303_LetterToQinCostumeWic_Pos",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 70710775,
                alias = "Gadget70710775",
                pos = "Q7051303_LetterToFarga_Pos",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 70710776,
                alias = "Gadget70710776",
                pos = "T7051613_N30200",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7051605"] = {},
    ["7051606"] = {},
    ["7051607"] = {},
    ["7051608"] = {}
}
