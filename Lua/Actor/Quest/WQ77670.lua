require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77670 = class("Quest77670", QuestActorProxy)
Quest77670.defaultAlias = "Quest77670"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77670:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77670:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7767004"] = self.OnSubStart7767004,
        ["7767005"] = self.OnSubStart7767005,
        ["7767001"] = self.OnSubStart7767001,
        ["7767002"] = self.OnSubStart7767002,
        ["7767003"] = self.OnSubStart7767003
    }
end

function Quest77670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7767004"] = self.OnSubFinish7767004,
        ["7767005"] = self.OnSubFinish7767005,
        ["7767001"] = self.OnSubFinish7767001,
        ["7767002"] = self.OnSubFinish7767002,
        ["7767003"] = self.OnSubFinish7767003
    }
end

function Quest77670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77670:Start()
    print("Start")
end

function Quest77670:OnDestroy()
    print("OnDestroy")
end

function Quest77670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77670:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77670Trigger", 77670)
    this:ActorDestroy("Q77670Trigger_1", 77670)
    this:ActorDestroy("Q77670Trigger_2", 77670)
end

function Quest77670:ActorDestroy(arg1, arg2)
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

function Quest77670:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77670:OnSubStart7767004(arg1)
    print("OnSubStart7767004")
    actorUtils.FinishQuestWithParam({false}, {7767004})
end

function Quest77670:OnSubFinish7767004(arg1)
    print("OnSubFinish7767004")
end

function Quest77670:OnSubStart7767005(arg1)
    print("OnSubStart7767005")
end

function Quest77670:OnSubFinish7767005(arg1)
    print("OnSubFinish7767005")
end

function Quest77670:OnSubStart7767001(arg1)
    print("OnSubStart7767001")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q77670Trigger", "Actor/Gadget/Q77670Trigger", 70900002, 0, points._Q77670TriggerPoint_.pos, points._Q77670TriggerPoint_.rot, true, false, 3, nil, 0, 77670)
end

function Quest77670:OnSubFinish7767001(arg1)
    print("OnSubFinish7767001")
    this:NpcDestroyImmediately(3, npcs.Npc1335.alias)
end

function Quest77670:OnSubStart7767002(arg1)
    print("OnSubStart7767002")
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7591.alias, 1, true)
    actorMgr:CreateActorWithPos("Q77670Trigger_1", "Actor/Gadget/Q77670Trigger_1", 70900002, 0, points._Q77670Trigger_1Point_.pos, points._Q77670Trigger_1Point_.rot, true, false, 3, nil, 0, 77670)
end

function Quest77670:OnSubFinish7767002(arg1)
    print("OnSubFinish7767002")
    this:LightNotifyTo(npcs.Npc7591.alias, 0, true)
end

function Quest77670:OnSubStart7767003(arg1)
    print("OnSubStart7767003")
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7591.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7597.alias, 1, true)
    actorMgr:CreateActorWithPos("Q77670Trigger_2", "Actor/Gadget/Q77670Trigger_2", 70900002, 0, points._Q77670Trigger_2Point_.pos, points._Q77670Trigger_2Point_.rot, true, false, 3, nil, 0, 77670)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77670):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7591.alias, 77670):DisableInteeHeadCtrl(true)
end

function Quest77670:OnSubFinish7767003(arg1)
    print("OnSubFinish7767003")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7591.alias)
    this:LightNotifyTo(npcs.Npc7597.alias, 0, true)
end

return Quest77670
