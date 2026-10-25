local Q71544ClientConfig = {
    MainID = 71544,
    ActorAlias = "71544",
    SubIDs = {q7154401 = 7154401},
    Npcs = {
        Npc1045 = {
            id = 1045,
            alias = "Npc1045",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc31166 = {
            id = 31166,
            alias = "Npc31166",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc31167 = {
            id = 31167,
            alias = "Npc31167",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc31168 = {
            id = 31168,
            alias = "Npc31168",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Xiangling = {
            id = 1012,
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1308 = {
            id = 1308,
            alias = "Npc1308",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2204 = {
            id = 2204,
            alias = "Npc2204",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc31106 = {
            id = 31106,
            alias = "Npc31106",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local instanceIDList_2 = {}
local str = "140011"
instanceIDList_2[1] = "140010"
instanceIDList_2[2] = str
datas.InstanceIDList_2 = instanceIDList_2
Q71544ClientConfig.Datas = datas
return Q71544ClientConfig
