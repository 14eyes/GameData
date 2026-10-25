return {
    MainID = 19101,
    ActorAlias = "19101",
    SubIDs = {q1910101 = 1910101, q1910102 = 1910102, q1910103 = 1910103, q1910104 = 1910104, q1910105 = 1910105},
    Npcs = {
        Npc146101Data = {
            id = 146101,
            alias = "Npc146101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Coop_DionaData = {
            id = 502,
            alias = "Coop_Diona",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc143101Data = {
            id = 143101,
            alias = "Npc143101",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1431Data = {
            id = 1431,
            alias = "Npc1431",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1461Data = {
            id = 1461,
            alias = "Npc1461",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RunTo1910103 = {
            {x = 2235.308, y = 214.09, z = -904.0707},
            {x = 2236.826, y = 214.09, z = -903.156},
            {x = 2238.948, y = 214.09, z = -901.6042},
            {x = 2240.403, y = 213.99, z = -901.4641},
            sceneData:GetDummyPoint(3, "COOP103901Diona02").pos
        },
        RunTo1910105 = {
            {x = 2240.481, y = 213.99, z = -901.5546},
            {x = 2249.863, y = 215.99, z = -893.817},
            {x = 2256.064, y = 215.99, z = -894.3062},
            {x = 2260.296, y = 216.09, z = -896.3539},
            sceneData:GetDummyPoint(3, "COOP103901Diona10").pos
        },
        Q1910105NarratorWithId = {narratorId = 1910601, pauseLen = 10, resumeLen = 5, tag = "Story"}
    }
}
