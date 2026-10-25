require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76169 = class("Quest76169", QuestActorProxy)
Quest76169.defaultAlias = "Quest76169"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76169:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76169:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616901"] = self.OnSubStart7616901,
        ["7616904"] = self.OnSubStart7616904,
        ["7616902"] = self.OnSubStart7616902,
        ["7616903"] = self.OnSubStart7616903
    }
end

function Quest76169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616901"] = self.OnSubFinish7616901,
        ["7616904"] = self.OnSubFinish7616904,
        ["7616902"] = self.OnSubFinish7616902,
        ["7616903"] = self.OnSubFinish7616903
    }
end

function Quest76169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76169:Start()
    print("Start")
end

function Quest76169:OnDestroy()
    print("OnDestroy")
end

function Quest76169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76169:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7616904Trigger")
    this:ActorDestroy("Q7616903Trigger")
    this:ActorDestroy("Q7616902Trigger")
end

function Quest76169:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76169:OnSubStart7616901(arg1)
    print("OnSubStart7616901")
end

function Quest76169:OnSubFinish7616901(arg1)
    print("OnSubFinish7616901")
end

function Quest76169:OnSubStart7616904(arg1)
    print("OnSubStart7616904")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q7616904Trigger", "Actor/Gadget/Q7616904Trigger", 70900002, 0, points._Q7616904TriggerPoint_.pos, points._Q7616904TriggerPoint_.rot, true, false, 3)
end

function Quest76169:OnSubFinish7616904(arg1)
    print("OnSubFinish7616904")
end

function Quest76169:OnSubStart7616902(arg1)
    print("OnSubStart7616902")
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DisableInteeHeadCtrl(true)
end

function Quest76169:OnSubFinish7616902(arg1)
    print("OnSubFinish7616902")
end

function Quest76169:OnSubStart7616903(arg1)
    print("OnSubStart7616903")
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76169):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q7616903Trigger", "Actor/Gadget/Q7616903Trigger", 70900002, 0, points._Q7616903TriggerPoint_.pos, points._Q7616903TriggerPoint_.rot, true, false, 3)
end

function Quest76169:OnSubFinish7616903(arg1)
    print("OnSubFinish7616903")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

return Quest76169
