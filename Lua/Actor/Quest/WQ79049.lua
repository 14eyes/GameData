require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79049 = class("Quest79049", QuestActorProxy)
Quest79049.defaultAlias = "Quest79049"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79049:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79049:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7904901"] = self.OnSubStart7904901, ["7904902"] = self.OnSubStart7904902}
end

function Quest79049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7904901"] = self.OnSubFinish7904901, ["7904902"] = self.OnSubFinish7904902}
end

function Quest79049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79049:Start()
    print("Start")
end

function Quest79049:OnDestroy()
    print("OnDestroy")
end

function Quest79049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79049:OnSubStart7904901(arg1)
    print("OnSubStart7904901")
end

function Quest79049:OnSubFinish7904901(arg1)
    print("OnSubFinish7904901")
end

function Quest79049:OnSubStart7904902(arg1)
    print("OnSubStart7904902")
end

function Quest79049:OnSubFinish7904902(arg1)
    print("OnSubFinish7904902")
end

return Quest79049
