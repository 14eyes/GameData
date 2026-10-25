local Q14036ClientConfig = {
    MainID = 14036,
    ActorAlias = "14036",
    SubIDs = {
        q1403601 = 1403601,
        q1403602 = 1403602,
        q1403603 = 1403603,
        q1403610 = 1403610,
        q1403604 = 1403604,
        q1403605 = 1403605,
        q1403606 = 1403606,
        q1403611 = 1403611,
        q1403607 = 1403607,
        q1403608 = 1403608,
        q1403609 = 1403609,
        q1403612 = 1403612
    },
    Points = {
        Q140360120217Trigger = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        Q14036202Trigger = {pos = {x = 3608.147, y = 440.25, z = 5092.58}, rot = {x = 0.0, y = 87.871, z = 0.0}},
        Q140360420219Trigger = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        Q1403605Trigger = {pos = {x = 3608.147, y = 440.25, z = 5092.58}, rot = {x = 0.0, y = 87.871, z = 0.0}},
        Q140360720225Trigger = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}},
        Q1403608Trigger = {pos = {x = 181.793, y = 27.013, z = 30.413}, rot = {x = 0.0, y = 181.161, z = 0.0}}
    }
}

local datas = {}
local specialSceneList = {}
local n = 20219
specialSceneList[1] = 20217
specialSceneList[2] = n
datas.SpecialSceneList = specialSceneList

datas.PlayerEnterDungeonData14032 = {
    useQuestLoadingPage = true,
    picPaths = {"ART/UI/Atlas/CutSceneUI/UI_CutScene_1130320101A"},
    picPathsGirl = {"ART/UI/Atlas/CutSceneUI/UI_CutScene_1130320101A"},
    picAutoNextInterval = 1,
    canSkipPic = false,
    isPicLoopPlay = false,
    isUseQuestRelatedPoint = false
}

Q14036ClientConfig.Datas = datas
return Q14036ClientConfig
