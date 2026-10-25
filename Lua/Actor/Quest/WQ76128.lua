require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76128 = class("Quest76128", QuestActorProxy)
Quest76128.defaultAlias = "Quest76128"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76128:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76128:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612801"] = self.OnSubStart7612801,
        ["7612802"] = self.OnSubStart7612802,
        ["7612803"] = self.OnSubStart7612803,
        ["7612804"] = self.OnSubStart7612804,
        ["7612805"] = self.OnSubStart7612805,
        ["7612806"] = self.OnSubStart7612806,
        ["7612807"] = self.OnSubStart7612807
    }
end

function Quest76128:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612801"] = self.OnSubFinish7612801,
        ["7612802"] = self.OnSubFinish7612802,
        ["7612803"] = self.OnSubFinish7612803,
        ["7612804"] = self.OnSubFinish7612804,
        ["7612805"] = self.OnSubFinish7612805,
        ["7612806"] = self.OnSubFinish7612806,
        ["7612807"] = self.OnSubFinish7612807
    }
end

function Quest76128:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76128:Start()
    print("Start")
end

function Quest76128:OnDestroy()
    print("OnDestroy")
end

function Quest76128:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76128:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76128:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76128:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7612802Trigger")
    this:ActorDestroy("Q7612803Trigger")
end

function Quest76128:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76128:OnSubStart7612801(arg1)
    print("OnSubStart7612801")
end

function Quest76128:OnSubFinish7612801(arg1)
    print("OnSubFinish7612801")
end

function Quest76128:OnSubStart7612802(arg1)
    print("OnSubStart7612802")
    actorMgr:CreateActorWithPos("Q7612802Trigger", "Actor/Gadget/Q7612802Trigger", 70900002, 0, points._Q7612802TriggerPoint_.pos, points._Q7612802TriggerPoint_.rot, true, false, 102, nil, 0, 76128)
end

function Quest76128:OnSubFinish7612802(arg1)
    print("OnSubFinish7612802")
end

function Quest76128:OnSubStart7612803(arg1)
    print("OnSubStart7612803")
    actorMgr:CreateActorWithPos("Q7612803Trigger", "Actor/Gadget/Q7612803Trigger", 70900002, 0, points._Q7612803TriggerPoint_.pos, points._Q7612803TriggerPoint_.rot, true, false, 102, nil, 0, 76128)
end

function Quest76128:OnSubFinish7612803(arg1)
    print("OnSubFinish7612803")
end

function Quest76128:OnSubStart7612804(arg1)
    print("OnSubStart7612804")
end

function Quest76128:OnSubFinish7612804(arg1)
    print("OnSubFinish7612804")
end

function Quest76128:OnSubStart7612805(arg1)
    print("OnSubStart7612805")
end

function Quest76128:OnSubFinish7612805(arg1)
    print("OnSubFinish7612805")
end

function Quest76128:OnSubStart7612806(arg1)
    print("OnSubStart7612806")
end

function Quest76128:OnSubFinish7612806(arg1)
    print("OnSubFinish7612806")
end

function Quest76128:OnSubStart7612807(arg1)
    print("OnSubStart7612807")
end

function Quest76128:OnSubFinish7612807(arg1)
    print("OnSubFinish7612807")
end

return Quest76128
