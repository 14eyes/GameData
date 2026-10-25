require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70057 = class("Quest70057", QuestActorProxy)
Quest70057.defaultAlias = "Quest70057"
local clientData
local this
local mainID
local actorAlias
local points

function Quest70057:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest70057:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7005701"] = self.OnSubStart7005701,
        ["7005702"] = self.OnSubStart7005702,
        ["7005703"] = self.OnSubStart7005703
    }
end

function Quest70057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7005701"] = self.OnSubFinish7005701,
        ["7005702"] = self.OnSubFinish7005702,
        ["7005703"] = self.OnSubFinish7005703
    }
end

function Quest70057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70057:Start()
    print("Start")
end

function Quest70057:OnDestroy()
    print("OnDestroy")
end

function Quest70057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70057:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70057:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7005701Trigger")
    this:ActorDestroy("Q7005702Trigger")
end

function Quest70057:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70057:OnSubStart7005701(arg1)
    print("OnSubStart7005701")
    actorMgr:CreateActorWithPos("Q7005701Trigger", "Actor/Gadget/Q7005701Trigger", 70900002, 0, points._Q7005701TriggerPoint_.pos, points._Q7005701TriggerPoint_.rot, true, false, 3)
end

function Quest70057:OnSubFinish7005701(arg1)
    print("OnSubFinish7005701")
end

function Quest70057:OnSubStart7005702(arg1)
    print("OnSubStart7005702")
    actorMgr:CreateActorWithPos("Q7005702Trigger", "Actor/Gadget/Q7005702Trigger", 70900002, 0, points._Q7005702TriggerPoint_.pos, points._Q7005702TriggerPoint_.rot, true, false, 3)
end

function Quest70057:OnSubFinish7005702(arg1)
    print("OnSubFinish7005702")
end

function Quest70057:OnSubStart7005703(arg1)
    print("OnSubStart7005703")
end

function Quest70057:OnSubFinish7005703(arg1)
    print("OnSubFinish7005703")
end

return Quest70057
