require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20600 = class("Quest20600", QuestActorProxy)
Quest20600.defaultAlias = "Quest20600"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20600:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20600:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2060001"] = self.OnSubStart2060001,
        ["2060002"] = self.OnSubStart2060002,
        ["2060003"] = self.OnSubStart2060003,
        ["2060004"] = self.OnSubStart2060004,
        ["2060005"] = self.OnSubStart2060005,
        ["2060006"] = self.OnSubStart2060006,
        ["2060007"] = self.OnSubStart2060007,
        ["2060008"] = self.OnSubStart2060008,
        ["2060009"] = self.OnSubStart2060009,
        ["2060010"] = self.OnSubStart2060010
    }
end

function Quest20600:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2060001"] = self.OnSubFinish2060001,
        ["2060002"] = self.OnSubFinish2060002,
        ["2060003"] = self.OnSubFinish2060003,
        ["2060004"] = self.OnSubFinish2060004,
        ["2060005"] = self.OnSubFinish2060005,
        ["2060006"] = self.OnSubFinish2060006,
        ["2060007"] = self.OnSubFinish2060007,
        ["2060008"] = self.OnSubFinish2060008,
        ["2060009"] = self.OnSubFinish2060009,
        ["2060010"] = self.OnSubFinish2060010
    }
end

function Quest20600:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2060001"] = self.OnSubFailed2060001,
        ["2060002"] = self.OnSubFailed2060002,
        ["2060003"] = self.OnSubFailed2060003,
        ["2060004"] = self.OnSubFailed2060004,
        ["2060005"] = self.OnSubFailed2060005,
        ["2060006"] = self.OnSubFailed2060006,
        ["2060007"] = self.OnSubFailed2060007,
        ["2060008"] = self.OnSubFailed2060008,
        ["2060009"] = self.OnSubFailed2060009,
        ["2060010"] = self.OnSubFailed2060010
    }
end

function Quest20600:Start()
    print("Start")
end

function Quest20600:OnDestroy()
    print("OnDestroy")
end

function Quest20600:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearData)
end

function Quest20600:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20600:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20600:NewFunction()
    print("NewFunction")
    self:NarratorOnlyTask(datas.PaimonReminder)
end

function Quest20600:BlackScreenDelete()
    print("BlackScreenDelete")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearData)
end

function Quest20600:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1517Data.alias, 3)
end

function Quest20600:OnSubStart2060001(arg1)
    print("OnSubStart2060001")
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 1)
end

function Quest20600:OnSubFinish2060001(arg1)
    print("OnSubFinish2060001")
end

function Quest20600:OnSubFailed2060001(arg1)
    print("OnSubFailed2060001")
end

function Quest20600:OnSubStart2060002(arg1)
    print("OnSubStart2060002")
end

function Quest20600:OnSubFinish2060002(arg1)
    print("OnSubFinish2060002")
    self:CallDelay(7, self.NewFunction)
end

function Quest20600:OnSubFailed2060002(arg1)
    print("OnSubFailed2060002")
end

function Quest20600:OnSubStart2060003(arg1)
    print("OnSubStart2060003")
end

function Quest20600:OnSubFinish2060003(arg1)
    print("OnSubFinish2060003")
    self:CallDelay(7, self.NewFunction)
end

function Quest20600:OnSubFailed2060003(arg1)
    print("OnSubFailed2060003")
end

function Quest20600:OnSubStart2060004(arg1)
    print("OnSubStart2060004")
end

function Quest20600:OnSubFinish2060004(arg1)
    print("OnSubFinish2060004")
    self:CallDelay(7, self.NewFunction)
end

function Quest20600:OnSubFailed2060004(arg1)
    print("OnSubFailed2060004")
end

function Quest20600:OnSubStart2060005(arg1)
    print("OnSubStart2060005")
end

function Quest20600:OnSubFinish2060005(arg1)
    print("OnSubFinish2060005")
end

function Quest20600:OnSubFailed2060005(arg1)
    print("OnSubFailed2060005")
end

function Quest20600:OnSubStart2060006(arg1)
    print("OnSubStart2060006")
end

function Quest20600:OnSubFinish2060006(arg1)
    print("OnSubFinish2060006")
end

function Quest20600:OnSubFailed2060006(arg1)
    print("OnSubFailed2060006")
end

function Quest20600:OnSubStart2060007(arg1)
    print("OnSubStart2060007")
end

function Quest20600:OnSubFinish2060007(arg1)
    print("OnSubFinish2060007")
end

function Quest20600:OnSubFailed2060007(arg1)
    print("OnSubFailed2060007")
end

function Quest20600:OnSubStart2060008(arg1)
    print("OnSubStart2060008")
end

function Quest20600:OnSubFinish2060008(arg1)
    print("OnSubFinish2060008")
end

function Quest20600:OnSubFailed2060008(arg1)
    print("OnSubFailed2060008")
end

function Quest20600:OnSubStart2060009(arg1)
    print("OnSubStart2060009")
end

function Quest20600:OnSubFinish2060009(arg1)
    print("OnSubFinish2060009")
end

function Quest20600:OnSubFailed2060009(arg1)
    print("OnSubFailed2060009")
end

function Quest20600:OnSubStart2060010(arg1)
    print("OnSubStart2060010")
end

function Quest20600:OnSubFinish2060010(arg1)
    print("OnSubFinish2060010")
end

function Quest20600:OnSubFailed2060010(arg1)
    print("OnSubFailed2060010")
end

return Quest20600
