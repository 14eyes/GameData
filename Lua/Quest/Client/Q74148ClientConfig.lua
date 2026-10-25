local Q74148ClientConfig = {
    MainID = 74148,
    ActorAlias = "74148",
    SubIDs = {
        q7414820 = 7414820,
        q7414801 = 7414801,
        q7414805 = 7414805,
        q7414807 = 7414807,
        q7414809 = 7414809,
        q7414811 = 7414811,
        q7414813 = 7414813,
        q7414815 = 7414815,
        q7414817 = 7414817,
        q7414802 = 7414802,
        q7414806 = 7414806,
        q7414808 = 7414808,
        q7414810 = 7414810,
        q7414812 = 7414812,
        q7414814 = 7414814,
        q7414816 = 7414816,
        q7414818 = 7414818,
        q7414803 = 7414803,
        q7414821 = 7414821,
        q7414804 = 7414804,
        q7414822 = 7414822
    },
    Npcs = {
        Npc21369Data = {
            id = 21369,
            alias = "Npc21369",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId01 = {
    narratorId = 7414802,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01
Q74148ClientConfig.Datas = datas
return Q74148ClientConfig
