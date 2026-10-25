require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77657 = class("Quest77657", QuestActorProxy)
Quest77657.defaultAlias = "Quest77657"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77657:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7765701"] = self.OnSubStart7765701}
end

function Quest77657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7765701"] = self.OnSubFinish7765701}
end

function Quest77657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77657:Start()
    print("Start")
end

function Quest77657:OnDestroy()
    print("OnDestroy")
end

function Quest77657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77657:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77657:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77657Trigger", 77657)
    this:BanCrowdNpc(3712, 15, datas.InstanceIDList, false, true)
end

function Quest77657:ActorDestroy(arg1, arg2)
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

function Quest77657:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77657:OnSubStart7765701(arg1)
    print("OnSubStart7765701")
    this:CreateQuestNpc(arg1, npcs.Npc17029.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17030.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7417.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7417.alias, 77657):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc3421.alias, 1, true)
    this:NotifyTo(npcs.Npc3422.alias, 1, true)
    this:NotifyTo(npcs.Npc3556.alias, 1, true)
    this:NotifyTo(npcs.Npc3557.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc17266.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17266.alias, 77657):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17267.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17267.alias, 77657):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17268.id, 0, false, 0)
    this:BanCrowdNpc(3712, 15, datas.InstanceIDList, true, true)
    actorMgr:CreateActorWithPos("Q77657Trigger", "Actor/Gadget/Q77657Trigger", 70900002, 0, points._Q77657TriggerPoint_.pos, points._Q77657TriggerPoint_.rot, true, false, 3, nil, 0, 77657)
end

function Quest77657:OnSubFinish7765701(arg1)
    print("OnSubFinish7765701")
    this:NpcDestroyImmediately(3, npcs.Npc17029.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17030.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7417.alias)
    this:LightNotifyTo(npcs.Npc3421.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3422.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3556.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3557.alias, 0, true)
    this:NpcDestroyImmediately(3, npcs.Npc17266.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17267.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17268.alias)
    this:BanCrowdNpc(3712, 15, datas.InstanceIDList, false, true)
end

return Quest77657
