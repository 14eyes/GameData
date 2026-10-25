main_id = 488
local tbl = {}
local n = 48802
local v = 48803
local n2 = 48804
local n3 = 48805
local n4 = 48806
local n5 = 48807
local n6 = 48808
tbl[1] = 48801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["48801"] = {}
rewind_data["48802"] = {}
rewind_data["48803"] = {}
rewind_data["48804"] = {}
rewind_data["48805"] = {}
rewind_data["48806"] = {}
rewind_data["48807"] = {}
rewind_data["48808"] = {}
quest_data = {}

quest_data["48800"] = {
    npcs = {
        {
            alias = "NPC10030",
            script = "Actor/Npc/TempNPC",
            id = 10030,
            pos = "Q48800NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Lisa01",
            script = "Actor/Npc/TempNPC",
            id = 100701,
            pos = "Q48800Lisa",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48801"] = {
    npcs = {
        {
            alias = "Npc153501",
            script = "Actor/Npc/TempNPC",
            id = 153501,
            pos = "Q48801NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48803"] = {
    npcs = {
        {
            alias = "Npc153501",
            script = "Actor/Npc/TempNPC",
            id = 153501,
            pos = "Q48803Start",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48804"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q48801Player"}}}
