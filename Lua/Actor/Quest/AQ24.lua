require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24 = class("Quest24", QuestActorProxy)
Quest24.defaultAlias = "Quest24"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest24:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest24:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401"] = self.OnSubStart2401,
        ["2402"] = self.OnSubStart2402,
        ["2403"] = self.OnSubStart2403,
        ["2404"] = self.OnSubStart2404,
        ["2405"] = self.OnSubStart2405,
        ["2406"] = self.OnSubStart2406,
        ["2407"] = self.OnSubStart2407,
        ["2408"] = self.OnSubStart2408,
        ["2409"] = self.OnSubStart2409,
        ["2410"] = self.OnSubStart2410,
        ["2411"] = self.OnSubStart2411,
        ["2412"] = self.OnSubStart2412,
        ["2413"] = self.OnSubStart2413
    }
end

function Quest24:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401"] = self.OnSubFinish2401,
        ["2402"] = self.OnSubFinish2402,
        ["2403"] = self.OnSubFinish2403,
        ["2404"] = self.OnSubFinish2404,
        ["2405"] = self.OnSubFinish2405,
        ["2406"] = self.OnSubFinish2406,
        ["2407"] = self.OnSubFinish2407,
        ["2408"] = self.OnSubFinish2408,
        ["2409"] = self.OnSubFinish2409,
        ["2410"] = self.OnSubFinish2410,
        ["2411"] = self.OnSubFinish2411,
        ["2412"] = self.OnSubFinish2412,
        ["2413"] = self.OnSubFinish2413
    }
end

function Quest24:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24:Start()
    print("Start")
end

function Quest24:OnDestroy()
    print("OnDestroy")
end

function Quest24:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest24:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q2407Trigger")
    this:ActorDestroy("Q2409Trigger")
end

function Quest24:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest24:OnSubStart2401(arg1)
    print("OnSubStart2401")
end

function Quest24:OnSubFinish2401(arg1)
    print("OnSubFinish2401")
end

function Quest24:OnSubStart2402(arg1)
    print("OnSubStart2402")
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
end

function Quest24:OnSubFinish2402(arg1)
    print("OnSubFinish2402")
end

function Quest24:OnSubStart2403(arg1)
    print("OnSubStart2403")
end

function Quest24:OnSubFinish2403(arg1)
    print("OnSubFinish2403")
end

function Quest24:OnSubStart2404(arg1)
    print("OnSubStart2404")
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
end

function Quest24:OnSubFinish2404(arg1)
    print("OnSubFinish2404")
end

function Quest24:OnSubStart2405(arg1)
    print("OnSubStart2405")
end

function Quest24:OnSubFinish2405(arg1)
    print("OnSubFinish2405")
end

function Quest24:OnSubStart2406(arg1)
    print("OnSubStart2406")
end

function Quest24:OnSubFinish2406(arg1)
    print("OnSubFinish2406")
end

function Quest24:OnSubStart2407(arg1)
    print("OnSubStart2407")
    actorMgr:CreateActorWithPos("Q2407Trigger", "Actor/Gadget/Q2407Trigger", 70900002, 0, points._Q2407TriggerPoint_.pos, points._Q2407TriggerPoint_.rot, true, false, 3)
end

function Quest24:OnSubFinish2407(arg1)
    print("OnSubFinish2407")
end

function Quest24:OnSubStart2408(arg1)
    print("OnSubStart2408")
end

function Quest24:OnSubFinish2408(arg1)
    print("OnSubFinish2408")
end

function Quest24:OnSubStart2409(arg1)
    print("OnSubStart2409")
    actorMgr:CreateActorWithPos("Q2409Trigger", "Actor/Gadget/Q2409Trigger", 70900002, 0, points._Q2409TriggerPoint_.pos, points._Q2409TriggerPoint_.rot, true, false, 3)
end

function Quest24:OnSubFinish2409(arg1)
    print("OnSubFinish2409")
end

function Quest24:OnSubStart2410(arg1)
    print("OnSubStart2410")
    this:CreateQuestNpc(arg1, npcs.Npc21837.id, 0, false, 0)
end

function Quest24:OnSubFinish2410(arg1)
    print("OnSubFinish2410")
end

function Quest24:OnSubStart2411(arg1)
    print("OnSubStart2411")
end

function Quest24:OnSubFinish2411(arg1)
    print("OnSubFinish2411")
end

function Quest24:OnSubStart2412(arg1)
    print("OnSubStart2412")
end

function Quest24:OnSubFinish2412(arg1)
    print("OnSubFinish2412")
end

function Quest24:OnSubStart2413(arg1)
    print("OnSubStart2413")
end

function Quest24:OnSubFinish2413(arg1)
    print("OnSubFinish2413")
end

return Quest24
