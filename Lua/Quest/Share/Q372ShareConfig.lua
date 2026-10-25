main_id = 372
local tbl = {}
local n = 37202
local v = 37203
tbl[1] = 37201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
rewind_data = {}

rewind_data["37202"] = {
    npcs = {
        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0
        }
    }
}

rewind_data["37203"] = {
    npcs = {
        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["37201"] = {
    npcs = {
        {
            id = 1160,
            alias = "WendyNew",
            script = "Actor/Quest/Q376/WendyNew",
            pos = "Q372WendyShow",
            data_index = 0
        },
        {
            id = 10038,
            alias = "NPC10038",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience01Vile",
            data_index = 0
        },
        {
            id = 10039,
            alias = "NPC10039",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience02Alfry",
            data_index = 0
        },
        {
            id = 10040,
            alias = "NPC10040",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience03Huf",
            data_index = 0
        },
        {
            id = 10041,
            alias = "NPC10041",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience04Pat",
            data_index = 0
        },
        {
            id = 10042,
            alias = "NPC10042",
            script = "Actor/Npc/TempNPC",
            pos = "Q372Audience05Sol",
            data_index = 0
        }
    }
}

quest_data["37203"] = {gadgets = {{id = 70300042, pos = "Q37201Tear", alias = "Tears", scene_id = 3, room_id = 0}}}
