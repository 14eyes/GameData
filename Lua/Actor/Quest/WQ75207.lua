require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75207 = class("Quest75207", QuestActorProxy)
Quest75207.defaultAlias = "Quest75207"
local clientData
local this
local mainID
local actorAlias
local points

function Quest75207:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest75207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7520701"] = self.OnSubStart7520701,
        ["7520702"] = self.OnSubStart7520702,
        ["7520703"] = self.OnSubStart7520703,
        ["7520704"] = self.OnSubStart7520704
    }
end

function Quest75207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7520701"] = self.OnSubFinish7520701,
        ["7520702"] = self.OnSubFinish7520702,
        ["7520703"] = self.OnSubFinish7520703,
        ["7520704"] = self.OnSubFinish7520704
    }
end

function Quest75207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75207:Start()
    print("Start")
end

function Quest75207:OnDestroy()
    print("OnDestroy")
end

function Quest75207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75207:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75207:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75207:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75207:OnMainPaused(arg1)
    this:ActorDestroy("Q7520701Trigger")
    this:ActorDestroy("Q7520704Trigger")
end

function Quest75207:OnSubStart7520701(arg1)
    print("OnSubStart7520701")
    actorMgr:CreateActorWithPos("Q7520701Trigger", "Actor/Gadget/Q7520701Trigger", 70900002, 0, points._Q7520701TriggerPoint_.pos, points._Q7520701TriggerPoint_.rot, true, false, 3)
end

function Quest75207:OnSubFinish7520701(arg1)
    print("OnSubFinish7520701")
end

function Quest75207:OnSubStart7520702(arg1)
    print("OnSubStart7520702")
end

function Quest75207:OnSubFinish7520702(arg1)
    print("OnSubFinish7520702")
end

function Quest75207:OnSubStart7520703(arg1)
    print("OnSubStart7520703")
end

function Quest75207:OnSubFinish7520703(arg1)
    print("OnSubFinish7520703")
end

function Quest75207:OnSubStart7520704(arg1)
    print("OnSubStart7520704")
    actorMgr:CreateActorWithPos("Q7520704Trigger", "Actor/Gadget/Q7520704Trigger", 70900002, 0, points._Q7520704TriggerPoint_.pos, points._Q7520704TriggerPoint_.rot, true, false, 3)
end

function Quest75207:OnSubFinish7520704(arg1)
    print("OnSubFinish7520704")
end

return Quest75207
