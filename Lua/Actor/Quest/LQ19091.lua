require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19091 = class("Quest19091", QuestActorProxy)
Quest19091.defaultAlias = "Quest19091"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19091:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909106"] = self.OnSubStart1909106,
        ["1909101"] = self.OnSubStart1909101,
        ["1909102"] = self.OnSubStart1909102,
        ["1909103"] = self.OnSubStart1909103,
        ["1909105"] = self.OnSubStart1909105,
        ["1909107"] = self.OnSubStart1909107,
        ["1909104"] = self.OnSubStart1909104,
        ["1909109"] = self.OnSubStart1909109,
        ["1909108"] = self.OnSubStart1909108
    }
end

function Quest19091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909106"] = self.OnSubFinish1909106,
        ["1909101"] = self.OnSubFinish1909101,
        ["1909102"] = self.OnSubFinish1909102,
        ["1909103"] = self.OnSubFinish1909103,
        ["1909105"] = self.OnSubFinish1909105,
        ["1909107"] = self.OnSubFinish1909107,
        ["1909104"] = self.OnSubFinish1909104,
        ["1909109"] = self.OnSubFinish1909109,
        ["1909108"] = self.OnSubFinish1909108
    }
end

function Quest19091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1909106"] = self.OnSubFailed1909106,
        ["1909101"] = self.OnSubFailed1909101,
        ["1909102"] = self.OnSubFailed1909102,
        ["1909103"] = self.OnSubFailed1909103,
        ["1909105"] = self.OnSubFailed1909105,
        ["1909107"] = self.OnSubFailed1909107,
        ["1909104"] = self.OnSubFailed1909104,
        ["1909109"] = self.OnSubFailed1909109,
        ["1909108"] = self.OnSubFailed1909108
    }
end

function Quest19091:Start()
    print("Start")
end

function Quest19091:OnDestroy()
    print("OnDestroy")
end

function Quest19091:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19091Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19091:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc144701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc146901Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710326Data.alias)
    self:UnSpawn(gadgets.Gadget70710339Data.alias)
    self:UnSpawn(gadgets.Gadget70710353Data.alias)
    self:LightNotifyTo("Npc1431", 0, true)
    self:LightNotifyTo("Npc1521", 0, true)
    self:LightNotifyTo("Npc1447", 0, true)
    self:LightNotifyTo("Npc1469", 0, true)
    self:LightNotifyTo("Npc1435", 0, true)
    self:LightNotifyTo("Npc1401", 0, true)
    self:LightNotifyTo("Npc1403", 0, true)
    local actor = actorMgr:GetActor(datas.Q19091Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19091:createNoel1()
    print("createNoel1")
    self:CreateQuestNpcById(1909101, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909101)
    self:RequestInteraction(npcs.Npc143501Data.alias)
    self:GetQuestNpcActor(npcs.Npc143501Data.alias):DoFreeStateTrigger()
    self:GetQuestNpcActor(npcs.Npc140101Data.alias):DoFreeStateTrigger()
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1401", 1, true)
    self:NotifyTo("Npc1403", 1, true)
end

function Quest19091:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19091:destroyNPC()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143501Data.alias, 3)
    self:LightNotifyTo("Npc1435", 0, true)
end

function Quest19091:destroybeiya()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140101Data.alias, 3)
    self:LightNotifyTo("Npc1401", 0, true)
    self:LightNotifyTo("Npc1403", 0, true)
end

function Quest19091:OnSubStart1909106(arg1)
    print("OnSubStart1909106")
    actorMgr:CreateActorWithPos(datas.Q19091Trigger1_.alias, datas.Q19091Trigger1_.script, datas.Q19091Trigger1_.id, 0, datas.Q19091Trigger1_.point.pos, datas.Q19091Trigger1_.point.rot, true, false, 3)
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1401", 1, true)
    self:NotifyTo("Npc1403", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc143501Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc140101Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc140101Data.alias):DoFreeStyle(1170, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc143501Data.alias):DoFreeStyle(1180, true, nil, true, true)
end

function Quest19091:OnSubFinish1909106(arg1)
    print("OnSubFinish1909106")
end

function Quest19091:OnSubFailed1909106(arg1)
    print("OnSubFailed1909106")
end

function Quest19091:OnSubStart1909101(arg1)
    print("OnSubStart1909101")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel1, nil, nil, "")
end

function Quest19091:OnSubFinish1909101(arg1)
    print("OnSubFinish1909101")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroybeiya, nil, nil, "")
end

function Quest19091:OnSubFailed1909101(arg1)
    print("OnSubFailed1909101")
end

function Quest19091:OnSubStart1909102(arg1)
    print("OnSubStart1909102")
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1521", 1, true)
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1447", 1, true)
    self:NotifyTo("Npc1469", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc152101Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc143101Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc144701Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc146901Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909102)
    self:GetQuestNpcActor(npcs.Npc152101Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc143101Data.alias):DoFreeStyle(1130, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc146901Data.alias):DoFreeStyle(1130, true, nil, true, true)
end

function Quest19091:OnSubFinish1909102(arg1)
    print("OnSubFinish1909102")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19091:OnSubFailed1909102(arg1)
    print("OnSubFailed1909102")
end

function Quest19091:OnSubStart1909103(arg1)
    print("OnSubStart1909103")
    self:UnSpawn(gadgets.Gadget70710326Data.alias)
    self:UnSpawn(gadgets.Gadget70710339Data.alias)
    self:UnSpawn(gadgets.Gadget70710353Data.alias)
    self:DelaySpawnGadget(arg1, 70710326, 1, 0)
    self:DelaySpawnGadget(arg1, 70710339, 2, 0)
    self:DelaySpawnGadget(arg1, 70710353, 3, 0)
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1521", 1, true)
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1447", 1, true)
    self:NotifyTo("Npc1469", 1, true)
    self:GetQuestNpcActor(npcs.Npc152101Data.alias):SitOnChair(0)
end

function Quest19091:OnSubFinish1909103(arg1)
    print("OnSubFinish1909103")
    self:NarratorOnlyTaskByData(datas.Narrator3, nil, 19091)
    self:UnSpawn(gadgets.Gadget70710326Data.alias)
end

function Quest19091:OnSubFailed1909103(arg1)
    print("OnSubFailed1909103")
end

function Quest19091:OnSubStart1909105(arg1)
    print("OnSubStart1909105")
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1521", 1, true)
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1447", 1, true)
    self:NotifyTo("Npc1469", 1, true)
    self:GetQuestNpcActor(npcs.Npc152101Data.alias):SitOnChair(0)
end

function Quest19091:OnSubFinish1909105(arg1)
    print("OnSubFinish1909105")
    self:UnSpawn(gadgets.Gadget70710339Data.alias)
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19091)
end

function Quest19091:OnSubFailed1909105(arg1)
    self:UnSpawn(gadgets.Gadget70710339Data.alias)
end

function Quest19091:OnSubStart1909107(arg1)
    print("OnSubStart1909107")
    self:NotifyTo("Npc1435", 1, true)
    self:NotifyTo("Npc1521", 1, true)
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1447", 1, true)
    self:NotifyTo("Npc1469", 1, true)
    self:GetQuestNpcActor(npcs.Npc152101Data.alias):SitOnChair(0)
end

function Quest19091:OnSubFinish1909107(arg1)
    print("OnSubFinish1909107")
    self:UnSpawn(gadgets.Gadget70710353Data.alias)
    self:NarratorOnlyTaskByData(datas.Narrator2, nil, 19091)
end

function Quest19091:OnSubFailed1909107(arg1)
    self:UnSpawn(gadgets.Gadget70710353Data.alias)
end

function Quest19091:OnSubStart1909104(arg1)
    self:GetQuestNpcActor(npcs.Npc152101Data.alias):StandFromChair(0)
    self:SafeDestroyQuestNpc(npcs.Npc143501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc143101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc144701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc146901Data.alias, 3)
    self:NotifyTo("Npc1435", 1, true)
    self:LightNotifyTo("Npc1431", 0, true)
    self:LightNotifyTo("Npc1521", 0, true)
    self:LightNotifyTo("Npc1447", 0, true)
    self:LightNotifyTo("Npc1469", 0, true)
    self:CreateQuestNpc(arg1, npcs.Npc143501Data.id, 0)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909103)
end

function Quest19091:OnSubFinish1909104(arg1)
    print("OnSubFinish1909104")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNPC, nil, nil, "")
end

function Quest19091:OnSubFailed1909104(arg1)
    print("OnSubFailed1909104")
end

function Quest19091:OnSubStart1909109(arg1)
    print("OnSubStart1909109")
end

function Quest19091:OnSubFinish1909109(arg1)
    print("OnSubFinish1909109")
end

function Quest19091:OnSubFailed1909109(arg1)
    print("OnSubFailed1909109")
end

function Quest19091:OnSubStart1909108(arg1)
    print("OnSubStart1909108")
end

function Quest19091:OnSubFinish1909108(arg1)
    print("OnSubFinish1909108")
end

function Quest19091:OnSubFailed1909108(arg1)
    print("OnSubFailed1909108")
end

return Quest19091
