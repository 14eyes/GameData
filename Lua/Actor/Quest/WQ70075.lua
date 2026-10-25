require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70075 = class("Quest70075", QuestActorProxy)
Quest70075.defaultAlias = "Quest70075"
local clientData
local this
local mainID
local actorAlias

function Quest70075:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70075:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7007501"] = self.OnSubStart7007501, ["7007502"] = self.OnSubStart7007502}
end

function Quest70075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7007501"] = self.OnSubFinish7007501, ["7007502"] = self.OnSubFinish7007502}
end

function Quest70075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70075:Start()
    print("Start")
end

function Quest70075:OnDestroy()
    print("OnDestroy")
end

function Quest70075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70075:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7007501Trigger")
end

function Quest70075:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70075:OnSubStart7007501(arg1)
    print("OnSubStart7007501")
end

function Quest70075:OnSubFinish7007501(arg1)
    print("OnSubFinish7007501")
end

function Quest70075:OnSubStart7007502(arg1)
    print("OnSubStart7007502")
end

function Quest70075:OnSubFinish7007502(arg1)
    print("OnSubFinish7007502")
end

return Quest70075
