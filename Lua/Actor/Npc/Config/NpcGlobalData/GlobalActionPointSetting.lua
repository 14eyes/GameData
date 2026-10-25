require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local actionPointType = NpcConfigCommon.ActionPointType
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local GlobalActionPointSetting = {}
local tbl = {actionType = actionPointType.StandbyPoint}
local freeStyleList = {}
local n = 1230
freeStyleList[1] = 1120
freeStyleList[2] = n
tbl.freeStyleList = freeStyleList
tbl.lookAtType = focusToPlayerType.OnlyOnce
tbl.reactOnCollide = true
tbl.reactOnBodyLang = true
local v = {actionType = actionPointType.SitPoint}
local freeStyleList2 = {}
local n2 = 4110
freeStyleList2[1] = 4100
freeStyleList2[2] = n2
v.freeStyleList = freeStyleList2
v.lookAtType = focusToPlayerType.OnlyOnce
v.reactOnCollide = false
v.reactOnBodyLang = false

local tbl2 = {
    actionType = actionPointType.SitOnChairPoint,
    freeStyleList = {8010},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl3 = {
    actionType = actionPointType.PrayPoint,
    freeStyleList = {4000},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = true,
    reactOnBodyLang = false
}

local tbl4 = {
    actionType = actionPointType.GuardPoint,
    freeStyleList = {1020},
    lookAtType = focusToPlayerType.Default,
    reactOnCollide = true,
    reactOnBodyLang = false
}

local tbl5 = {
    actionType = actionPointType.ForgePoint,
    freeStyleList = {7011},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl6 = {
    actionType = actionPointType.FishingPoint,
    freeStyleList = {4220},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl7 = {
    actionType = actionPointType.KidPlayPoint,
    freeStyleList = {5010},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl8 = {
    actionType = actionPointType.AfraidPoint,
    freeStyleList = {1070},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = true,
    reactOnBodyLang = true
}

local tbl9 = {
    actionType = actionPointType.InvestigatePoint,
    freeStyleList = {1280},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl10 = {
    actionType = actionPointType.OperationPoint,
    freeStyleList = {1320},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = true,
    reactOnBodyLang = true
}

local tbl11 = {
    actionType = actionPointType.MultiTalkPoint,
    freeStyleList = {1120},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = true,
    reactOnBodyLang = true
}

local tbl12 = {
    actionType = actionPointType.MultiTalkPrimPoint,
    freeStyleList = {1170},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = true,
    reactOnBodyLang = true
}

local tbl13 = {actionType = actionPointType.ShopOwnerPoint}
local freeStyleList3 = {}
local n3 = 1120
freeStyleList3[1] = 4010
freeStyleList3[2] = n3
tbl13.freeStyleList = freeStyleList3
tbl13.lookAtType = focusToPlayerType.Default
tbl13.reactOnCollide = true
tbl13.reactOnBodyLang = true

local tbl14 = {
    actionType = actionPointType.ArrangePoint,
    freeStyleList = {4260},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl15 = {
    actionType = actionPointType.SplashPoint,
    freeStyleList = {4270},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl16 = {
    actionType = actionPointType.SweepingPoint,
    freeStyleList = {4251},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl17 = {
    actionType = actionPointType.RepairPoint,
    freeStyleList = {4280},
    lookAtType = focusToPlayerType.Ignore,
    reactOnCollide = false,
    reactOnBodyLang = false
}

local tbl18 = {
    actionType = actionPointType.PerformingPoint,
    freeStyleList = {4090},
    lookAtType = focusToPlayerType.OnlyOnce,
    reactOnCollide = false,
    reactOnBodyLang = false
}

GlobalActionPointSetting[1] = tbl
GlobalActionPointSetting[2] = v
GlobalActionPointSetting[3] = tbl2
GlobalActionPointSetting[4] = tbl3
GlobalActionPointSetting[5] = tbl4
GlobalActionPointSetting[6] = tbl5
GlobalActionPointSetting[7] = tbl6
GlobalActionPointSetting[8] = tbl7
GlobalActionPointSetting[9] = tbl8
GlobalActionPointSetting[10] = tbl9
GlobalActionPointSetting[11] = tbl10
GlobalActionPointSetting[12] = tbl11
GlobalActionPointSetting[13] = tbl12
GlobalActionPointSetting[14] = tbl13
GlobalActionPointSetting[15] = tbl14
GlobalActionPointSetting[16] = tbl15
GlobalActionPointSetting[17] = tbl16
GlobalActionPointSetting[18] = tbl17
GlobalActionPointSetting[19] = tbl18
return GlobalActionPointSetting
