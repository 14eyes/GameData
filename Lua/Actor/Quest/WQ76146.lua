require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76146 = class("Quest76146", QuestActorProxy)
Quest76146.defaultAlias = "Quest76146"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76146:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76146:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7614601"] = self.OnSubStart7614601, ["7614602"] = self.OnSubStart7614602}
end

function Quest76146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7614601"] = self.OnSubFinish7614601, ["7614602"] = self.OnSubFinish7614602}
end

function Quest76146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76146:Start()
    print("Start")
end

function Quest76146:OnDestroy()
    print("OnDestroy")
end

function Quest76146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76146:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76146:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7614601Trigger", nil)
end

function Quest76146:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(questId)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76146:OnSubStart7614601(arg1)
    print("OnSubStart7614601")
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614601Trigger", "Actor/Gadget/Q7614601Trigger", 70900002, 0, points._Q7614601TriggerPoint_.pos, points._Q7614601TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76146:OnSubFinish7614601(arg1)
    print("OnSubFinish7614601")
end

function Quest76146:OnSubStart7614602(arg1)
    print("OnSubStart7614602")
    this:SetNavigationByMainId(76146, true)
end

function Quest76146:OnSubFinish7614602(arg1)
    print("OnSubFinish7614602")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
end

return Quest76146
