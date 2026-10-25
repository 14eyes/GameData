require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70055 = class("Quest70055", QuestActorProxy)
Quest70055.defaultAlias = "Quest70055"
local clientData
local this
local mainID
local actorAlias
local points

function Quest70055:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest70055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7005501"] = self.OnSubStart7005501,
        ["7005502"] = self.OnSubStart7005502,
        ["7005503"] = self.OnSubStart7005503
    }
end

function Quest70055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7005501"] = self.OnSubFinish7005501,
        ["7005502"] = self.OnSubFinish7005502,
        ["7005503"] = self.OnSubFinish7005503
    }
end

function Quest70055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70055:Start()
    print("Start")
end

function Quest70055:OnDestroy()
    print("OnDestroy")
end

function Quest70055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70055:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7005501Trigger")
    this:ActorDestroy("Q7005503Trigger")
end

function Quest70055:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70055:OnSubStart7005501(arg1)
    print("OnSubStart7005501")
    actorMgr:CreateActorWithPos("Q7005501Trigger", "Actor/Gadget/Q7005501Trigger", 70900002, 0, points._Q7005501TriggerPoint_.pos, points._Q7005501TriggerPoint_.rot, true, false, 3)
end

function Quest70055:OnSubFinish7005501(arg1)
    print("OnSubFinish7005501")
end

function Quest70055:OnSubStart7005502(arg1)
    print("OnSubStart7005502")
end

function Quest70055:OnSubFinish7005502(arg1)
    print("OnSubFinish7005502")
end

function Quest70055:OnSubStart7005503(arg1)
    print("OnSubStart7005503")
    actorMgr:CreateActorWithPos("Q7005503Trigger", "Actor/Gadget/Q7005503Trigger", 70900002, 0, points._Q7005503TriggerPoint_.pos, points._Q7005503TriggerPoint_.rot, true, false, 3)
end

function Quest70055:OnSubFinish7005503(arg1)
    print("OnSubFinish7005503")
end

return Quest70055
