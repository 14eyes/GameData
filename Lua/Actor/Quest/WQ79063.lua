require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79063 = class("Quest79063", QuestActorProxy)
Quest79063.defaultAlias = "Quest79063"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest79063:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79063:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7906301"] = self.OnSubStart7906301}
end

function Quest79063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7906301"] = self.OnSubFinish7906301}
end

function Quest79063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79063:Start()
    print("Start")
end

function Quest79063:OnDestroy()
    print("OnDestroy")
end

function Quest79063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79063:OnSubStart7906301(arg1)
    print("OnSubStart7906301")
end

function Quest79063:OnSubFinish7906301(arg1)
    print("OnSubFinish7906301")
    this:CallDelayByQuest("7906301", 2, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId)
    end)
end

return Quest79063
