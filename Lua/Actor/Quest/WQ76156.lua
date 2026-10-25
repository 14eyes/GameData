require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76156 = class("Quest76156", QuestActorProxy)
Quest76156.defaultAlias = "Quest76156"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76156:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76156:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7615601"] = self.OnSubStart7615601, ["7615602"] = self.OnSubStart7615602}
end

function Quest76156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7615601"] = self.OnSubFinish7615601, ["7615602"] = self.OnSubFinish7615602}
end

function Quest76156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76156:Start()
    print("Start")
end

function Quest76156:OnDestroy()
    print("OnDestroy")
end

function Quest76156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76156:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7615601Trigger")
end

function Quest76156:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76156:OnSubStart7615601(arg1)
    print("OnSubStart7615601")
    actorMgr:CreateActorWithPos("Q7615601Trigger", "Actor/Gadget/Q7615601Trigger", 70900002, 0, points._Q7615601TriggerPoint_.pos, points._Q7615601TriggerPoint_.rot, true, false, 3)
end

function Quest76156:OnSubFinish7615601(arg1)
    print("OnSubFinish7615601")
end

function Quest76156:OnSubStart7615602(arg1)
    print("OnSubStart7615602")
end

function Quest76156:OnSubFinish7615602(arg1)
    print("OnSubFinish7615602")
end

return Quest76156
