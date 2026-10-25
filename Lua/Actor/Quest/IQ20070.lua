require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20070 = class("Quest20070", QuestActorProxy)
Quest20070.defaultAlias = "Quest20070"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20070:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2007015"] = self.OnSubStart2007015,
        ["2007008"] = self.OnSubStart2007008,
        ["2007009"] = self.OnSubStart2007009,
        ["2007010"] = self.OnSubStart2007010,
        ["2007011"] = self.OnSubStart2007011,
        ["2007001"] = self.OnSubStart2007001,
        ["2007006"] = self.OnSubStart2007006,
        ["2007003"] = self.OnSubStart2007003,
        ["2007012"] = self.OnSubStart2007012,
        ["2007007"] = self.OnSubStart2007007,
        ["2007004"] = self.OnSubStart2007004,
        ["2007014"] = self.OnSubStart2007014,
        ["2007013"] = self.OnSubStart2007013
    }
end

function Quest20070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2007015"] = self.OnSubFinish2007015,
        ["2007008"] = self.OnSubFinish2007008,
        ["2007009"] = self.OnSubFinish2007009,
        ["2007010"] = self.OnSubFinish2007010,
        ["2007011"] = self.OnSubFinish2007011,
        ["2007001"] = self.OnSubFinish2007001,
        ["2007006"] = self.OnSubFinish2007006,
        ["2007003"] = self.OnSubFinish2007003,
        ["2007012"] = self.OnSubFinish2007012,
        ["2007007"] = self.OnSubFinish2007007,
        ["2007004"] = self.OnSubFinish2007004,
        ["2007014"] = self.OnSubFinish2007014,
        ["2007013"] = self.OnSubFinish2007013
    }
end

function Quest20070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2007015"] = self.OnSubFailed2007015,
        ["2007008"] = self.OnSubFailed2007008,
        ["2007009"] = self.OnSubFailed2007009,
        ["2007010"] = self.OnSubFailed2007010,
        ["2007011"] = self.OnSubFailed2007011,
        ["2007001"] = self.OnSubFailed2007001,
        ["2007006"] = self.OnSubFailed2007006,
        ["2007003"] = self.OnSubFailed2007003,
        ["2007012"] = self.OnSubFailed2007012,
        ["2007007"] = self.OnSubFailed2007007,
        ["2007004"] = self.OnSubFailed2007004,
        ["2007014"] = self.OnSubFailed2007014,
        ["2007013"] = self.OnSubFailed2007013
    }
end

function Quest20070:Start()
    print("Start")
end

function Quest20070:OnDestroy()
    print("OnDestroy")
end

function Quest20070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20070:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest20070:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20070:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20070:OnSubStart2007015(arg1)
    print("OnSubStart2007015")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007015(arg1)
    print("OnSubFinish2007015")
end

function Quest20070:OnSubFailed2007015(arg1)
    print("OnSubFailed2007015")
end

function Quest20070:OnSubStart2007008(arg1)
    print("OnSubStart2007008")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007008(arg1)
    print("OnSubFinish2007008")
end

function Quest20070:OnSubFailed2007008(arg1)
    print("OnSubFailed2007008")
end

function Quest20070:OnSubStart2007009(arg1)
    print("OnSubStart2007009")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007009(arg1)
    print("OnSubFinish2007009")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709901, nil, 20070)
end

function Quest20070:OnSubFailed2007009(arg1)
    print("OnSubFailed2007009")
end

function Quest20070:OnSubStart2007010(arg1)
    print("OnSubStart2007010")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007010(arg1)
    print("OnSubFinish2007010")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709903, nil, 20070)
end

function Quest20070:OnSubFailed2007010(arg1)
    print("OnSubFailed2007010")
end

function Quest20070:OnSubStart2007011(arg1)
    print("OnSubStart2007011")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007011(arg1)
    print("OnSubFinish2007011")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709909, nil, 20070)
end

function Quest20070:OnSubFailed2007011(arg1)
    print("OnSubFailed2007011")
end

function Quest20070:OnSubStart2007001(arg1)
    print("OnSubStart2007001")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007001(arg1)
    print("OnSubFinish2007001")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2007010, nil, 20070)
end

function Quest20070:OnSubFailed2007001(arg1)
    print("OnSubFailed2007001")
end

function Quest20070:OnSubStart2007006(arg1)
    print("OnSubStart2007006")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2007001_targetPos1").pos, 0, 3, true, false)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007006(arg1)
    print("OnSubFinish2007006")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709911, nil, 20070)
end

function Quest20070:OnSubFailed2007006(arg1)
    print("OnSubFailed2007006")
end

function Quest20070:OnSubStart2007003(arg1)
    print("OnSubStart2007003")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007003(arg1)
    print("OnSubFinish2007003")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709913, nil, 20070)
end

function Quest20070:OnSubFailed2007003(arg1)
    print("OnSubFailed2007003")
end

function Quest20070:OnSubStart2007012(arg1)
    print("OnSubStart2007012")
end

function Quest20070:OnSubFinish2007012(arg1)
    print("OnSubFinish2007012")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2006901, nil, 20070)
end

function Quest20070:OnSubFailed2007012(arg1)
    print("OnSubFailed2007012")
end

function Quest20070:OnSubStart2007007(arg1)
    print("OnSubStart2007007")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007007(arg1)
    print("OnSubFinish2007007")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20070:OnSubFailed2007007(arg1)
    print("OnSubFailed2007007")
end

function Quest20070:OnSubStart2007004(arg1)
    print("OnSubStart2007004")
    self:FinishQuestID(false, 2007004)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007004(arg1)
    print("OnSubFinish2007004")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20070:OnSubFailed2007004(arg1)
    print("OnSubFailed2007004")
end

function Quest20070:OnSubStart2007014(arg1)
    print("OnSubStart2007014")
    self:FinishQuestID(false, 2007014)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20070:OnSubFinish2007014(arg1)
    print("OnSubFinish2007014")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData, nil, nil, "")
end

function Quest20070:OnSubFailed2007014(arg1)
    print("OnSubFailed2007014")
end

function Quest20070:OnSubStart2007013(arg1)
    print("OnSubStart2007013")
end

function Quest20070:OnSubFinish2007013(arg1)
    print("OnSubFinish2007013")
end

function Quest20070:OnSubFailed2007013(arg1)
    print("OnSubFailed2007013")
end

return Quest20070
