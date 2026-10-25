require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77223 = class("Quest77223", QuestActorProxy)
Quest77223.defaultAlias = "Quest77223"
local clientData
local this
local mainID
local actorAlias
local points

function Quest77223:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest77223:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7722301"] = self.OnSubStart7722301,
        ["7722302"] = self.OnSubStart7722302,
        ["7722303"] = self.OnSubStart7722303,
        ["7722304"] = self.OnSubStart7722304,
        ["7722305"] = self.OnSubStart7722305
    }
end

function Quest77223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7722301"] = self.OnSubFinish7722301,
        ["7722302"] = self.OnSubFinish7722302,
        ["7722303"] = self.OnSubFinish7722303,
        ["7722304"] = self.OnSubFinish7722304,
        ["7722305"] = self.OnSubFinish7722305
    }
end

function Quest77223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77223:Start()
    print("Start")
end

function Quest77223:OnDestroy()
    print("OnDestroy")
end

function Quest77223:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77223:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77223:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77223:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7722301Trigger", 77223)
    this:ActorDestroy("Q7722302Trigger", 77223)
    this:ActorDestroy("Q7722303Trigger", 77223)
    this:ActorDestroy("Q7722304Trigger", 77223)
end

function Quest77223:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77223:OnSubStart7722301(arg1)
    print("OnSubStart7722301")
    actorMgr:CreateActorWithPos("Q7722301Trigger", "Actor/Gadget/Q7722301Trigger", 70900002, 0, points._Q7722301TriggerPoint_.pos, points._Q7722301TriggerPoint_.rot, true, false, 3, nil, 0, 77223)
end

function Quest77223:OnSubFinish7722301(arg1)
    print("OnSubFinish7722301")
end

function Quest77223:OnSubStart7722302(arg1)
    print("OnSubStart7722302")
    actorMgr:CreateActorWithPos("Q7722302Trigger", "Actor/Gadget/Q7722302Trigger", 70900002, 0, points._Q7722302TriggerPoint_.pos, points._Q7722302TriggerPoint_.rot, true, false, 3, nil, 0, 77223)
end

function Quest77223:OnSubFinish7722302(arg1)
    print("OnSubFinish7722302")
end

function Quest77223:OnSubStart7722303(arg1)
    print("OnSubStart7722303")
    actorMgr:CreateActorWithPos("Q7722303Trigger", "Actor/Gadget/Q7722303Trigger", 70900002, 0, points._Q7722303TriggerPoint_.pos, points._Q7722303TriggerPoint_.rot, true, false, 3, nil, 0, 77223)
end

function Quest77223:OnSubFinish7722303(arg1)
    print("OnSubFinish7722303")
end

function Quest77223:OnSubStart7722304(arg1)
    print("OnSubStart7722304")
    actorMgr:CreateActorWithPos("Q7722304Trigger", "Actor/Gadget/Q7722304Trigger", 70900002, 0, points._Q7722304TriggerPoint_.pos, points._Q7722304TriggerPoint_.rot, true, false, 3, nil, 0, 77223)
end

function Quest77223:OnSubFinish7722304(arg1)
    print("OnSubFinish7722304")
end

function Quest77223:OnSubStart7722305(arg1)
    print("OnSubStart7722305")
    actorUtils.FinishQuestWithParam({false}, {7722305})
end

function Quest77223:OnSubFinish7722305(arg1)
    print("OnSubFinish7722305")
end

return Quest77223
