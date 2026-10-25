local Q74003ClientConfig = {
    MainID = 74003,
    ActorAlias = "74003",
    SubIDs = {
        q7400330 = 7400330,
        q7400303 = 7400303,
        q7400336 = 7400336,
        q7400304 = 7400304,
        q7400305 = 7400305,
        q7400339 = 7400339,
        q7400307 = 7400307,
        q7400331 = 7400331,
        q7400306 = 7400306,
        q7400308 = 7400308,
        q7400309 = 7400309,
        q7400342 = 7400342,
        q7400343 = 7400343,
        q7400311 = 7400311,
        q7400328 = 7400328,
        q7400337 = 7400337,
        q7400338 = 7400338,
        q7400340 = 7400340,
        q7400312 = 7400312,
        q7400332 = 7400332,
        q7400313 = 7400313,
        q7400344 = 7400344,
        q7400314 = 7400314,
        q7400315 = 7400315,
        q7400316 = 7400316,
        q7400317 = 7400317,
        q7400318 = 7400318,
        q7400319 = 7400319,
        q7400320 = 7400320,
        q7400321 = 7400321,
        q7400322 = 7400322,
        q7400323 = 7400323,
        q7400324 = 7400324,
        q7400325 = 7400325,
        q7400345 = 7400345,
        q7400346 = 7400346,
        q7400326 = 7400326,
        q7400333 = 7400333,
        q7400327 = 7400327,
        q7400335 = 7400335,
        q7400341 = 7400341,
        q7400334 = 7400334,
        q7400310 = 7400310,
        q7400329 = 7400329,
        q7400301 = 7400301
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21119Data = {
            id = 21119,
            alias = "Npc21119",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21120Data = {
            id = 21120,
            alias = "Npc21120",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7400334Trigger = {pos = {x = 3903.867, y = -138.8612, z = 4925.413}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400332Trigger = {pos = {x = 3903.216, y = -123.8612, z = 4909.698}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400333Trigger = {pos = {x = 3726.753, y = -557.0399, z = 4649.64}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400337Trigger = {pos = {x = 3904.37, y = -120.7311, z = 4813.366}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q7400339Trigger = {pos = {x = 3824.389, y = -153.4048, z = 4836.835}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    Narrator_740039901 = {
        narratorId = 740039901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {}
    }
}

local narrator_740039902 = {
    narratorId = 740039902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_740039902.durationList = durationList
datas.Narrator_740039902 = narrator_740039902

local narrator_740039904 = {
    narratorId = 740039904,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narrator_740039904.durationList = tbl
datas.Narrator_740039904 = narrator_740039904
Q74003ClientConfig.Datas = datas
return Q74003ClientConfig
