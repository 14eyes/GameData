local Q77674ClientConfig = {
    MainID = 77674,
    ActorAlias = "77674",
    SubIDs = {q7767401 = 7767401},
    Npcs = {
        Npc7540 = {
            id = 7540,
            alias = "Npc7540",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17015 = {
            id = 17015,
            alias = "Npc17015",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local instanceIDList = {}
local str = "80015"
instanceIDList[1] = "80014"
instanceIDList[2] = str
datas.InstanceIDList = instanceIDList
Q77674ClientConfig.Datas = datas
return Q77674ClientConfig
