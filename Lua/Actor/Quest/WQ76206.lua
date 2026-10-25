require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76206 = class("Quest76206", QuestActorProxy)
Quest76206.defaultAlias = "Quest76206"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76206:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620603"] = self.OnSubStart7620603,
        ["7620606"] = self.OnSubStart7620606,
        ["7620601"] = self.OnSubStart7620601,
        ["7620602"] = self.OnSubStart7620602
    }
end

function Quest76206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620603"] = self.OnSubFinish7620603,
        ["7620606"] = self.OnSubFinish7620606,
        ["7620601"] = self.OnSubFinish7620601,
        ["7620602"] = self.OnSubFinish7620602
    }
end

function Quest76206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76206:Start()
    print("Start")
end

function Quest76206:OnDestroy()
    print("OnDestroy")
end

function Quest76206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76206:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76206:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7620603Trigger", nil)
    this:ActorDestroy("Q7620606Trigger", nil)
end

function Quest76206:ActorDestroy(arg1, arg2)
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

function Quest76206:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76206:OnSubStart7620603(arg1)
    print("OnSubStart7620603")
    this:CreateQuestNpc(arg1, npcs.Npc22455.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22455.alias, 76206):DoFreeStyle(1231, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7620603Trigger", "Actor/Gadget/Q7620603Trigger", 70900002, 0, points._Q7620603TriggerPoint_.pos, points._Q7620603TriggerPoint_.rot, true, false, 103, nil, 0, 76206)
end

function Quest76206:OnSubFinish7620603(arg1)
    print("OnSubFinish7620603")
end

function Quest76206:OnSubStart7620606(arg1)
    print("OnSubStart7620606")
    this:GetQuestNpcActor(npcs.Npc22455.alias, 76206):DoFreeStyle(1231, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7620606Trigger", "Actor/Gadget/Q7620606Trigger", 70900002, 0, points._Q7620606TriggerPoint_.pos, points._Q7620606TriggerPoint_.rot, true, false, 103, nil, 0, 76206)
end

function Quest76206:OnSubFinish7620606(arg1)
    print("OnSubFinish7620606")
end

function Quest76206:OnSubStart7620601(arg1)
    print("OnSubStart7620601")
    this:GetQuestNpcActor(npcs.Npc22455.alias, 76206):DoFreeStyle(1231, true, nil, true, true, false, false)
end

function Quest76206:OnSubFinish7620601(arg1)
    print("OnSubFinish7620601")
    this:NpcDestroyImmediately(103, npcs.Npc22455.alias)
end

function Quest76206:OnSubStart7620602(arg1)
    print("OnSubStart7620602")
end

function Quest76206:OnSubFinish7620602(arg1)
    print("OnSubFinish7620602")
end

return Quest76206
