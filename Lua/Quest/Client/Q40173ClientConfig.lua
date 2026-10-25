local Q40173ClientConfig = {
    MainID = 40173,
    ActorAlias = "40173",
    SubIDs = {q4017301 = 4017301, q4017302 = 4017302, q4017303 = 4017303, q4017304 = 4017304},
    Npcs = {
        Npc6213 = {
            id = 6213,
            alias = "Npc6213",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14603 = {
            id = 14603,
            alias = "Npc14603",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1094 = {
            id = 1094,
            alias = "Npc1094",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1096 = {
            id = 1096,
            alias = "Npc1096",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q40173Trigger2Point_ = {pos = {x = -1877.109, y = 54.66, z = 9650.907}, rot = {x = 0.0, y = 235.065, z = 0.0}},
        _Q40173Trigger4Point_ = {pos = {x = -1876.138, y = 54.657, z = 9654.629}, rot = {x = 0.54, y = 210.032, z = 358.661}}
    }
}

local datas = {}
local crowd = {}
local n = 10032
crowd[1] = 10031
crowd[2] = n
datas.crowd = crowd
Q40173ClientConfig.Datas = datas
return Q40173ClientConfig
