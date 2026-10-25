require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79048 = class("Quest79048", QuestActorProxy)
Quest79048.defaultAlias = "Quest79048"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest79048:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7904801"] = self.OnSubStart7904801, ["7904802"] = self.OnSubStart7904802}
end

function Quest79048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7904801"] = self.OnSubFinish7904801, ["7904802"] = self.OnSubFinish7904802}
end

function Quest79048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79048:Start()
    print("Start")
end

function Quest79048:OnDestroy()
    print("OnDestroy")
end

function Quest79048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79048:OnSubStart7904801(arg1)
    print("OnSubStart7904801")
end

function Quest79048:OnSubFinish7904801(arg1)
    print("OnSubFinish7904801")
end

function Quest79048:OnSubStart7904802(arg1)
    print("OnSubStart7904802")
end

function Quest79048:OnSubFinish7904802(arg1)
    print("OnSubFinish7904802")
end

return Quest79048
