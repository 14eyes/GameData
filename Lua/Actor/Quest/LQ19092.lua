require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19092 = class("Quest19092", QuestActorProxy)
Quest19092.defaultAlias = "Quest19092"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19092:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19092:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1909209"] = self.OnSubStart1909209,
        ["1909202"] = self.OnSubStart1909202,
        ["1909211"] = self.OnSubStart1909211,
        ["1909212"] = self.OnSubStart1909212,
        ["1909213"] = self.OnSubStart1909213,
        ["1909214"] = self.OnSubStart1909214,
        ["1909215"] = self.OnSubStart1909215,
        ["1909216"] = self.OnSubStart1909216,
        ["1909217"] = self.OnSubStart1909217,
        ["1909218"] = self.OnSubStart1909218,
        ["1909210"] = self.OnSubStart1909210,
        ["1909201"] = self.OnSubStart1909201,
        ["1909203"] = self.OnSubStart1909203,
        ["1909207"] = self.OnSubStart1909207,
        ["1909204"] = self.OnSubStart1909204,
        ["1909205"] = self.OnSubStart1909205,
        ["1909206"] = self.OnSubStart1909206,
        ["1909219"] = self.OnSubStart1909219,
        ["1909208"] = self.OnSubStart1909208
    }
end

function Quest19092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1909209"] = self.OnSubFinish1909209,
        ["1909202"] = self.OnSubFinish1909202,
        ["1909211"] = self.OnSubFinish1909211,
        ["1909212"] = self.OnSubFinish1909212,
        ["1909213"] = self.OnSubFinish1909213,
        ["1909214"] = self.OnSubFinish1909214,
        ["1909215"] = self.OnSubFinish1909215,
        ["1909216"] = self.OnSubFinish1909216,
        ["1909217"] = self.OnSubFinish1909217,
        ["1909218"] = self.OnSubFinish1909218,
        ["1909210"] = self.OnSubFinish1909210,
        ["1909201"] = self.OnSubFinish1909201,
        ["1909203"] = self.OnSubFinish1909203,
        ["1909207"] = self.OnSubFinish1909207,
        ["1909204"] = self.OnSubFinish1909204,
        ["1909205"] = self.OnSubFinish1909205,
        ["1909206"] = self.OnSubFinish1909206,
        ["1909219"] = self.OnSubFinish1909219,
        ["1909208"] = self.OnSubFinish1909208
    }
end

function Quest19092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1909209"] = self.OnSubFailed1909209,
        ["1909202"] = self.OnSubFailed1909202,
        ["1909211"] = self.OnSubFailed1909211,
        ["1909212"] = self.OnSubFailed1909212,
        ["1909213"] = self.OnSubFailed1909213,
        ["1909214"] = self.OnSubFailed1909214,
        ["1909215"] = self.OnSubFailed1909215,
        ["1909216"] = self.OnSubFailed1909216,
        ["1909217"] = self.OnSubFailed1909217,
        ["1909218"] = self.OnSubFailed1909218,
        ["1909210"] = self.OnSubFailed1909210,
        ["1909201"] = self.OnSubFailed1909201,
        ["1909203"] = self.OnSubFailed1909203,
        ["1909207"] = self.OnSubFailed1909207,
        ["1909204"] = self.OnSubFailed1909204,
        ["1909205"] = self.OnSubFailed1909205,
        ["1909206"] = self.OnSubFailed1909206,
        ["1909219"] = self.OnSubFailed1909219,
        ["1909208"] = self.OnSubFailed1909208
    }
end

function Quest19092:Start()
    print("Start")
end

function Quest19092:OnDestroy()
    print("OnDestroy")
end

function Quest19092:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19092Trigger4_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19092:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc146501Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc147501Data.alias, 1009)
    self:LoopunspwanGadget()
    self:LightNotifyTo("Npc1465", 0, true)
    self:LightNotifyTo("Npc1475", 0, true)
    local actor = actorMgr:GetActor(datas.Q19092Trigger4_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19092:destroyNPC()
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):StandFromChair(0)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc146501Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc147501Data.alias, 1009)
    self:LightNotifyTo("Npc1465", 0, true)
    self:LightNotifyTo("Npc1475", 0, true)
    self:LightNotifyTo("Npc1603", 0, true)
    self:LightNotifyTo("Npc1404", 0, true)
end

function Quest19092:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1009)
end

function Quest19092:LoopunspwanGadget()
    self:UnSpawn(gadgets.Gadget70710337Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710371Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710360Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710372Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710361Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710373Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710362Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710374Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710363Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710375Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710364Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710376Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710365Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710377Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710366Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710378Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710367Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710379Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710368Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710380Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710369Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710381Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710370Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710382Data.alias, 1009)
end

function Quest19092:OnSubStart1909209(arg1)
    print("OnSubStart1909209")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1465", 1, true)
        self:NotifyTo("Npc1475", 1, true)
        self:NotifyTo("Npc1404", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc146501Data.id, 2)
        self:CreateQuestNpc(arg1, npcs.Npc147501Data.id, 3)
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc147501Data.alias)
        questNpcActor:SitOnChair(0)
        questNpcActor:DoFreeStyle(8061, true, nil, true, true)
        self:RemoveCoopInteractionDataFromSubStartPoint(103402, 1909203)
        self:RemoveCoopInteractionDataFromSubStartPoint(103402, 1909205)
        self:RequestCoopInteractionFromSubStartPoint(103402, 1909201)
        self:LoopunspwanGadget()
    end)
end

function Quest19092:OnSubFinish1909209(arg1)
    print("OnSubFinish1909209")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19092:OnSubFailed1909209(arg1)
    print("OnSubFailed1909209")
end

function Quest19092:OnSubStart1909202(arg1)
    print("OnSubStart1909202")
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1404", 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc147501Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:DoFreeStyle(8061, true, nil, true, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909203)
end

function Quest19092:OnSubFinish1909202(arg1)
    print("OnSubFinish1909202")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19092:OnSubFailed1909202(arg1)
    print("OnSubFailed1909202")
    self:RemoveCoopInteractionDataFromSubStartPoint(103402, 1909203)
end

function Quest19092:OnSubStart1909211(arg1)
    self:UnSpawn(gadgets.Gadget70710337Data.alias)
    self:UnSpawn(gadgets.Gadget70710371Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710337Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710371Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
    actorMgr:CreateActorWithPos(datas.Q19092Trigger4_.alias, datas.Q19092Trigger4_.script, datas.Q19092Trigger4_.id, 0, datas.Q19092Trigger4_.point.pos, datas.Q19092Trigger4_.point.rot, true, false, 1009)
end

function Quest19092:OnSubFinish1909211(arg1)
    self:UnSpawn(gadgets.Gadget70710337Data.alias)
    self:UnSpawn(gadgets.Gadget70710371Data.alias)
end

function Quest19092:OnSubFailed1909211(arg1)
    self:UnSpawn(gadgets.Gadget70710337Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710371Data.alias, 1009)
end

function Quest19092:OnSubStart1909212(arg1)
    self:UnSpawn(gadgets.Gadget70710360Data.alias)
    self:UnSpawn(gadgets.Gadget70710372Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710360Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710372Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909212(arg1)
    self:UnSpawn(gadgets.Gadget70710360Data.alias)
    self:UnSpawn(gadgets.Gadget70710372Data.alias)
end

function Quest19092:OnSubFailed1909212(arg1)
    self:UnSpawn(gadgets.Gadget70710360Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710372Data.alias, 1009)
end

function Quest19092:OnSubStart1909213(arg1)
    self:UnSpawn(gadgets.Gadget70710361Data.alias)
    self:UnSpawn(gadgets.Gadget70710373Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710361Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710373Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909213(arg1)
    self:UnSpawn(gadgets.Gadget70710361Data.alias)
    self:UnSpawn(gadgets.Gadget70710373Data.alias)
end

function Quest19092:OnSubFailed1909213(arg1)
    self:UnSpawn(gadgets.Gadget70710361Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710373Data.alias, 1009)
end

function Quest19092:OnSubStart1909214(arg1)
    self:UnSpawn(gadgets.Gadget70710362Data.alias)
    self:UnSpawn(gadgets.Gadget70710374Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710362Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710374Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909214(arg1)
    self:UnSpawn(gadgets.Gadget70710362Data.alias)
    self:UnSpawn(gadgets.Gadget70710374Data.alias)
end

function Quest19092:OnSubFailed1909214(arg1)
    self:UnSpawn(gadgets.Gadget70710362Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710374Data.alias, 1009)
end

function Quest19092:OnSubStart1909215(arg1)
    self:UnSpawn(gadgets.Gadget70710363Data.alias)
    self:UnSpawn(gadgets.Gadget70710375Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710363Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710375Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909215(arg1)
    self:UnSpawn(gadgets.Gadget70710363Data.alias)
    self:UnSpawn(gadgets.Gadget70710375Data.alias)
end

function Quest19092:OnSubFailed1909215(arg1)
    self:UnSpawn(gadgets.Gadget70710363Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710375Data.alias, 1009)
end

function Quest19092:OnSubStart1909216(arg1)
    self:UnSpawn(gadgets.Gadget70710364Data.alias)
    self:UnSpawn(gadgets.Gadget70710376Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710364Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710376Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909216(arg1)
    self:UnSpawn(gadgets.Gadget70710364Data.alias)
    self:UnSpawn(gadgets.Gadget70710376Data.alias)
end

function Quest19092:OnSubFailed1909216(arg1)
    self:UnSpawn(gadgets.Gadget70710364Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710376Data.alias, 1009)
end

function Quest19092:OnSubStart1909217(arg1)
    self:UnSpawn(gadgets.Gadget70710365Data.alias)
    self:UnSpawn(gadgets.Gadget70710377Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710365Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710377Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909217(arg1)
    self:UnSpawn(gadgets.Gadget70710365Data.alias)
    self:UnSpawn(gadgets.Gadget70710377Data.alias)
end

function Quest19092:OnSubFailed1909217(arg1)
    self:UnSpawn(gadgets.Gadget70710365Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710377Data.alias, 1009)
end

function Quest19092:OnSubStart1909218(arg1)
    self:UnSpawn(gadgets.Gadget70710366Data.alias)
    self:UnSpawn(gadgets.Gadget70710378Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710366Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710378Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909218(arg1)
    self:UnSpawn(gadgets.Gadget70710366Data.alias)
    self:UnSpawn(gadgets.Gadget70710378Data.alias)
end

function Quest19092:OnSubFailed1909218(arg1)
    self:UnSpawn(gadgets.Gadget70710366Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710378Data.alias, 1009)
end

function Quest19092:OnSubStart1909210(arg1)
    self:UnSpawn(gadgets.Gadget70710367Data.alias)
    self:UnSpawn(gadgets.Gadget70710379Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710367Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710379Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909210(arg1)
    self:UnSpawn(gadgets.Gadget70710367Data.alias)
    self:UnSpawn(gadgets.Gadget70710379Data.alias)
end

function Quest19092:OnSubFailed1909210(arg1)
    self:UnSpawn(gadgets.Gadget70710367Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710379Data.alias, 1009)
end

function Quest19092:OnSubStart1909201(arg1)
    self:UnSpawn(gadgets.Gadget70710368Data.alias)
    self:UnSpawn(gadgets.Gadget70710380Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710368Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710380Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909201(arg1)
    self:UnSpawn(gadgets.Gadget70710368Data.alias)
    self:UnSpawn(gadgets.Gadget70710380Data.alias)
end

function Quest19092:OnSubFailed1909201(arg1)
    self:UnSpawn(gadgets.Gadget70710368Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710380Data.alias, 1009)
end

function Quest19092:OnSubStart1909203(arg1)
    self:UnSpawn(gadgets.Gadget70710369Data.alias)
    self:UnSpawn(gadgets.Gadget70710381Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710369Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710381Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909203(arg1)
    self:UnSpawn(gadgets.Gadget70710369Data.alias)
    self:UnSpawn(gadgets.Gadget70710381Data.alias)
end

function Quest19092:OnSubFailed1909203(arg1)
    self:UnSpawn(gadgets.Gadget70710369Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710381Data.alias, 1009)
end

function Quest19092:OnSubStart1909207(arg1)
    self:UnSpawn(gadgets.Gadget70710370Data.alias)
    self:UnSpawn(gadgets.Gadget70710382Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710370Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70710382Data.id, 2)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909207(arg1)
    self:UnSpawn(gadgets.Gadget70710370Data.alias)
    self:UnSpawn(gadgets.Gadget70710382Data.alias)
end

function Quest19092:OnSubFailed1909207(arg1)
    self:UnSpawn(gadgets.Gadget70710370Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710382Data.alias, 1009)
end

function Quest19092:OnSubStart1909204(arg1)
    print("OnSubStart1909204")
    self:NotifyTo("Npc1603", 1, true)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909204(arg1)
    print("OnSubFinish1909204")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19092)
end

function Quest19092:OnSubFailed1909204(arg1)
    print("OnSubFailed1909204")
end

function Quest19092:OnSubStart1909205(arg1)
    print("OnSubStart1909205")
    self:NotifyTo("Npc1603", 1, true)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909205(arg1)
    print("OnSubFinish1909205")
    self:NarratorOnlyTaskByData(datas.Narrator2, nil, 19092)
end

function Quest19092:OnSubFailed1909205(arg1)
    print("OnSubFailed1909205")
end

function Quest19092:OnSubStart1909206(arg1)
    print("OnSubStart1909206")
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909206(arg1)
    self:NarratorOnlyTaskByData(datas.Narrator4, nil, 19092)
end

function Quest19092:OnSubFailed1909206(arg1)
    print("OnSubFailed1909206")
end

function Quest19092:OnSubStart1909219(arg1)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:NotifyTo("Npc1603", 1, true)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909219(arg1)
    print("OnSubFinish1909219")
end

function Quest19092:OnSubFailed1909219(arg1)
    print("OnSubFailed1909219")
end

function Quest19092:OnSubStart1909208(arg1)
    print("OnSubStart1909208")
    self:NotifyTo("Npc1603", 1, true)
    self:NotifyTo("Npc1404", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1475", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1909205)
    self:GetQuestNpcActor(npcs.Npc147501Data.alias):SitOnChair(8064)
end

function Quest19092:OnSubFinish1909208(arg1)
    print("OnSubFinish1909208")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNPC, nil, nil, "")
end

function Quest19092:OnSubFailed1909208(arg1)
    print("OnSubFailed1909208")
    self:RemoveCoopInteractionDataFromSubStartPoint(103402, 1909205)
end

return Quest19092
