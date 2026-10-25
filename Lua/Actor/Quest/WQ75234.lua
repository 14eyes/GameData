require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75234 = class("Quest75234", QuestActorProxy)
Quest75234.defaultAlias = "Quest75234"
local clientData
local this
local mainID
local actorAlias
local points

function Quest75234:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest75234:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7523401"] = self.OnSubStart7523401}
end

function Quest75234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7523401"] = self.OnSubFinish7523401}
end

function Quest75234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75234:Start()
    print("Start")
end

function Quest75234:OnDestroy()
    print("OnDestroy")
end

function Quest75234:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75234:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75234:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75234:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7523401Trigger")
end

function Quest75234:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75234:OnSubStart7523401(arg1)
    print("OnSubStart7523401")
    actorMgr:CreateActorWithPos("Q7523401Trigger", "Actor/Gadget/Q7523401Trigger", 70900002, 0, points._Q7523401TriggerPoint_.pos, points._Q7523401TriggerPoint_.rot, true, false, 3)
end

function Quest75234:OnSubFinish7523401(arg1)
    print("OnSubFinish7523401")
end

return Quest75234
