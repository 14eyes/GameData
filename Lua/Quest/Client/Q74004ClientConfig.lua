local Q74004ClientConfig = {
    MainID = 74004,
    ActorAlias = "74004",
    SubIDs = {
        q7400401 = 7400401,
        q7400428 = 7400428,
        q7400418 = 7400418,
        q7400402 = 7400402,
        q7400431 = 7400431,
        q7400432 = 7400432,
        q7400429 = 7400429,
        q7400419 = 7400419,
        q7400404 = 7400404,
        q7400433 = 7400433,
        q7400430 = 7400430,
        q7400434 = 7400434,
        q7400407 = 7400407,
        q7400421 = 7400421,
        q7400408 = 7400408,
        q7400424 = 7400424,
        q7400413 = 7400413,
        q7400427 = 7400427,
        q7400414 = 7400414,
        q7400425 = 7400425,
        q7400415 = 7400415,
        q7400420 = 7400420,
        q7400406 = 7400406,
        q7400422 = 7400422,
        q7400409 = 7400409,
        q7400410 = 7400410,
        q7400423 = 7400423,
        q7400411 = 7400411,
        q7400412 = 7400412,
        q7400416 = 7400416,
        q7400426 = 7400426,
        q7400417 = 7400417,
        q7400405 = 7400405,
        q7400403 = 7400403
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21002Data = {
            id = 21002,
            alias = "Npc21002",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20999Data = {
            id = 20999,
            alias = "Npc20999",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400420Trigger = {pos = {x = 3891.411, y = -562.6609, z = 4664.523}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400422Trigger = {pos = {x = 3726.732, y = -557.0509, z = 4648.665}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400410Trigger = {pos = {x = 3742.609, y = -551.0509, z = 4672.735}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400423Trigger = {pos = {x = 3767.565, y = -557.0321, z = 4667.929}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400425Trigger = {pos = {x = 3802.178, y = 250.4, z = 4984.175}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400414Trigger = {pos = {x = 3801.985, y = 250.4, z = 4984.149}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400426Trigger = {pos = {x = 4001.562, y = 445.9279, z = 4596.414}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    Narrator_7400401 = {
        narratorId = 7400401,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narrator_7400402 = {
    narratorId = 7400402,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7400402.durationList = durationList
datas.Narrator_7400402 = narrator_7400402

local narrator_7400403 = {
    narratorId = 7400403,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_7400403.durationList = tbl
datas.Narrator_7400403 = narrator_7400403
datas.TextmapId = {""}

datas.RoutePointsData01 = {
    {x = 3884.417, y = -563.364, z = 4629.356},
    {x = 3891.646, y = -562.777, z = 4628.051},
    {x = 3897.929, y = -561.939, z = 4630.848},
    {x = 3901.095, y = -561.463, z = 4636.939}
}

datas.RoutePointsData02 = {
    {x = 3900.747, y = -561.289, z = 4654.479},
    {x = 3894.508, y = -560.999, z = 4656.845},
    {x = 3888.908, y = -561.076, z = 4654.285},
    {x = 3882.449, y = -561.076, z = 4651.782},
    {x = 3878.465, y = -563.2, z = 4657.277},
    {x = 3874.996, y = -564.034, z = 4654.172}
}

datas.DialogsId_Teleport = {740049906}
Q74004ClientConfig.Datas = datas
return Q74004ClientConfig
