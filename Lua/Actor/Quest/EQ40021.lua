require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40021 = class("Quest40021", QuestActorProxy)
Quest40021.defaultAlias = "Quest40021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002110"] = self.OnSubStart4002110,
        ["4002101"] = self.OnSubStart4002101,
        ["4002102"] = self.OnSubStart4002102,
        ["4002103"] = self.OnSubStart4002103,
        ["4002113"] = self.OnSubStart4002113,
        ["4002104"] = self.OnSubStart4002104,
        ["4002105"] = self.OnSubStart4002105,
        ["4002115"] = self.OnSubStart4002115,
        ["4002111"] = self.OnSubStart4002111,
        ["4002114"] = self.OnSubStart4002114,
        ["4002116"] = self.OnSubStart4002116,
        ["4002106"] = self.OnSubStart4002106,
        ["4002117"] = self.OnSubStart4002117,
        ["4002107"] = self.OnSubStart4002107,
        ["4002108"] = self.OnSubStart4002108,
        ["4002112"] = self.OnSubStart4002112,
        ["4002109"] = self.OnSubStart4002109,
        ["4002118"] = self.OnSubStart4002118
    }
end

function Quest40021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002110"] = self.OnSubFinish4002110,
        ["4002101"] = self.OnSubFinish4002101,
        ["4002102"] = self.OnSubFinish4002102,
        ["4002103"] = self.OnSubFinish4002103,
        ["4002113"] = self.OnSubFinish4002113,
        ["4002104"] = self.OnSubFinish4002104,
        ["4002105"] = self.OnSubFinish4002105,
        ["4002115"] = self.OnSubFinish4002115,
        ["4002111"] = self.OnSubFinish4002111,
        ["4002114"] = self.OnSubFinish4002114,
        ["4002116"] = self.OnSubFinish4002116,
        ["4002106"] = self.OnSubFinish4002106,
        ["4002117"] = self.OnSubFinish4002117,
        ["4002107"] = self.OnSubFinish4002107,
        ["4002108"] = self.OnSubFinish4002108,
        ["4002112"] = self.OnSubFinish4002112,
        ["4002109"] = self.OnSubFinish4002109,
        ["4002118"] = self.OnSubFinish4002118
    }
end

function Quest40021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4002110"] = self.OnSubFailed4002110,
        ["4002101"] = self.OnSubFailed4002101,
        ["4002102"] = self.OnSubFailed4002102,
        ["4002103"] = self.OnSubFailed4002103,
        ["4002113"] = self.OnSubFailed4002113,
        ["4002104"] = self.OnSubFailed4002104,
        ["4002105"] = self.OnSubFailed4002105,
        ["4002115"] = self.OnSubFailed4002115,
        ["4002111"] = self.OnSubFailed4002111,
        ["4002114"] = self.OnSubFailed4002114,
        ["4002116"] = self.OnSubFailed4002116,
        ["4002106"] = self.OnSubFailed4002106,
        ["4002117"] = self.OnSubFailed4002117,
        ["4002107"] = self.OnSubFailed4002107,
        ["4002108"] = self.OnSubFailed4002108,
        ["4002112"] = self.OnSubFailed4002112,
        ["4002109"] = self.OnSubFailed4002109,
        ["4002118"] = self.OnSubFailed4002118
    }
end

function Quest40021:Start()
    print("Start")
end

function Quest40021:OnDestroy()
    print("OnDestroy")
end

function Quest40021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40021:OnMainCanceled(arg1)
    local actor = actorMgr:GetActor(datas.Q40021Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q40021Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710489Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:UnSpawn(gadgets.Gadget70710489Data2.alias)
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
    self:UnSpawn(gadgets.Gadget70710524Data3.alias)
end

function Quest40021:destroyxinyan()
    print("destroyxinyan")
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStateTrigger()
    self:DestroyQuestNpcActorByAlias(npcs.Npc1042Data.alias, false)
end

function Quest40021:destroyshaluo()
    print("destroyshaluo")
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStateTrigger()
    self:DestroyQuestNpcActorByAlias(npcs.Npc1038Data.alias, false)
end

function Quest40021:createshidajiang1()
    print("createshidajiang1")
    self:CreateQuestNpcById(4002105, npcs.Npc10200Data.id, 0)
    self:RequestInteraction(npcs.Npc10200Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:SpawnGadgetById(4002105, gadgets.Gadget70710524Data1.id, 1)
    self:UnSpawn(gadgets.Gadget70710524Data3.alias)
    self:SpawnGadgetById(4002105, gadgets.Gadget70710524Data3.id, 2)
end

function Quest40021:createxinyan()
    print("createxinyan")
    self:CreateQuestNpcById(4002109, npcs.Npc1042Data.id, 0)
    self:RequestInteraction(npcs.Npc1042Data.alias)
end

function Quest40021:OnSubStart4002110(arg1)
    print("OnSubStart4002110")
end

function Quest40021:OnSubFinish4002110(arg1)
    print("OnSubFinish4002110")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 40021)
end

function Quest40021:OnSubFailed4002110(arg1)
    print("OnSubFailed4002110")
end

function Quest40021:OnSubStart4002101(arg1)
    self.AfterMainPageActiveSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 0)
        self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    end)
end

function Quest40021:OnSubFinish4002101(arg1)
    print("OnSubFinish4002101")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyxinyan, nil, nil, "", false, true)
end

function Quest40021:OnSubFailed4002101(arg1)
    print("OnSubFailed4002101")
end

function Quest40021:OnSubStart4002102(arg1)
    print("OnSubStart4002102")
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40021:OnSubFinish4002102(arg1)
    print("OnSubFinish4002102")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyshaluo, nil, nil, "", false, true)
end

function Quest40021:OnSubFailed4002102(arg1)
    print("OnSubFailed4002102")
end

function Quest40021:OnSubStart4002103(arg1)
    print("OnSubStart4002103")
    actorMgr:CreateActorWithPos(datas.Q40021Trigger1_.alias, datas.Q40021Trigger1_.script, datas.Q40021Trigger1_.id, 0, datas.Q40021Trigger1_.point.pos, datas.Q40021Trigger1_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30067Data.id, 0)
end

function Quest40021:OnSubFinish4002103(arg1)
    print("OnSubFinish4002103")
end

function Quest40021:OnSubFailed4002103(arg1)
    print("OnSubFailed4002103")
end

function Quest40021:OnSubStart4002113(arg1)
    print("OnSubStart4002113")
end

function Quest40021:OnSubFinish4002113(arg1)
    print("OnSubFinish4002113")
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 3)
end

function Quest40021:OnSubFailed4002113(arg1)
    print("OnSubFailed4002113")
end

function Quest40021:OnSubStart4002104(arg1)
    print("OnSubStart4002104")
end

function Quest40021:OnSubFinish4002104(arg1)
    print("OnSubFinish4002104")
end

function Quest40021:OnSubFailed4002104(arg1)
    print("OnSubFailed4002104")
end

function Quest40021:OnSubStart4002105(arg1)
    print("OnSubStart4002105")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createshidajiang1, nil, nil, "", false, true)
end

function Quest40021:OnSubFinish4002105(arg1)
    print("OnSubFinish4002105")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 47005)
end

function Quest40021:OnSubFailed4002105(arg1)
    print("OnSubFailed4002105")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 47005)
end

function Quest40021:OnSubStart4002115(arg1)
    print("OnSubStart4002115")
end

function Quest40021:OnSubFinish4002115(arg1)
    print("OnSubFinish4002115")
end

function Quest40021:OnSubFailed4002115(arg1)
    print("OnSubFailed4002115")
end

function Quest40021:OnSubStart4002111(arg1)
    print("OnSubStart4002111")
    self:UnSpawn(gadgets.Gadget70710489Data1.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710489Data1.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710524Data1.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710524Data3.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710524Data3.id, 3, 0)
end

function Quest40021:OnSubFinish4002111(arg1)
    print("OnSubFinish4002111")
    self:UnSpawn(gadgets.Gadget70710489Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data3.alias)
end

function Quest40021:OnSubFailed4002111(arg1)
    print("OnSubFailed4002111")
    self:UnSpawn(gadgets.Gadget70710489Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data3.alias)
end

function Quest40021:OnSubStart4002114(arg1)
    print("OnSubStart4002114")
    self:CreateQuestNpc(arg1, npcs.Npc30067Data.id, 0)
    self:RequestInteraction(npcs.Npc30067Data.alias)
end

function Quest40021:OnSubFinish4002114(arg1)
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 47005)
        self:ShowTutorialDialog(1038)
    end)
end

function Quest40021:OnSubFailed4002114(arg1)
    print("OnSubFailed4002114")
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 47005)
end

function Quest40021:OnSubStart4002116(arg1)
    print("OnSubStart4002116")
end

function Quest40021:OnSubFinish4002116(arg1)
    print("OnSubFinish4002116")
end

function Quest40021:OnSubFailed4002116(arg1)
    print("OnSubFailed4002116")
end

function Quest40021:OnSubStart4002106(arg1)
    print("OnSubStart4002106")
end

function Quest40021:OnSubFinish4002106(arg1)
    print("OnSubFinish4002106")
end

function Quest40021:OnSubFailed4002106(arg1)
    print("OnSubFailed4002106")
end

function Quest40021:OnSubStart4002117(arg1)
    self:ClearNarratorTask()
    self:StopNarrator()
    actorMgr:CreateActorWithPos(datas.Q40021Trigger3_.alias, datas.Q40021Trigger3_.script, datas.Q40021Trigger3_.id, 0, datas.Q40021Trigger3_.point.pos, datas.Q40021Trigger3_.point.rot, true, false, 47002)
end

function Quest40021:OnSubFinish4002117(arg1)
    print("OnSubFinish4002117")
end

function Quest40021:OnSubFailed4002117(arg1)
    print("OnSubFailed4002117")
end

function Quest40021:OnSubStart4002107(arg1)
    local questVar = self.GetQuestVar(self, 4002107, 4)
    if questVar == 0 then
        self.NarratorOnlyTaskByData(self, datas.Narrator2, function()
            self:SetQuestVar(4002107, 4, 1)
        end, 40021)

        self.UnSpawn(self, gadgets.Gadget70710489Data2.alias)
        self.DelaySpawnGadget(self, arg1, gadgets.Gadget70710489Data2.id, 1, 0)
        self.UnSpawn(self, gadgets.Gadget70710524Data2.alias)
        self.DelaySpawnGadget(self, arg1, gadgets.Gadget70710524Data2.id, 2, 0)
    elseif questVar == 1 then
        self.UnSpawn(self, gadgets.Gadget70710489Data2.alias)
        self.DelaySpawnGadget(self, arg1, gadgets.Gadget70710489Data2.id, 1, 0)
        self.UnSpawn(self, gadgets.Gadget70710524Data2.alias)
        self.DelaySpawnGadget(self, arg1, gadgets.Gadget70710524Data2.id, 2, 0)
    end
end

function Quest40021:OnSubFinish4002107(arg1)
    print("OnSubFinish4002107")
    self:UnSpawn(gadgets.Gadget70710489Data2.alias)
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40021:OnSubFailed4002107(arg1)
    print("OnSubFailed4002107")
    self:UnSpawn(gadgets.Gadget70710489Data2.alias)
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40021:OnSubStart4002108(arg1)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CreateQuestNpc(arg1, npcs.Npc30067Data.id, 0)
    self:RequestInteraction(npcs.Npc30067Data.alias)
end

function Quest40021:OnSubFinish4002108(arg1)
    print("OnSubFinish4002108")
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 47002)
end

function Quest40021:OnSubFailed4002108(arg1)
    print("OnSubFailed4002108")
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 47002)
end

function Quest40021:OnSubStart4002112(arg1)
    print("OnSubStart4002112")
    actorMgr:CreateActorWithPos(datas.Q40021Trigger2_.alias, datas.Q40021Trigger2_.script, datas.Q40021Trigger2_.id, 0, datas.Q40021Trigger2_.point.pos, datas.Q40021Trigger2_.point.rot, true, false, 3)
end

function Quest40021:OnSubFinish4002112(arg1)
    print("OnSubFinish4002112")
end

function Quest40021:OnSubFailed4002112(arg1)
    print("OnSubFailed4002112")
end

function Quest40021:OnSubStart4002109(arg1)
    print("OnSubStart4002109")
    self:ShowBlackScreen(0, 1, 1, self.createxinyan, nil, nil, "", false, true)
end

function Quest40021:OnSubFinish4002109(arg1)
    print("OnSubFinish4002109")
    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 3)
end

function Quest40021:OnSubFailed4002109(arg1)
    print("OnSubFailed4002109")
end

function Quest40021:OnSubStart4002118(arg1)
    print("OnSubStart4002118")
end

function Quest40021:OnSubFinish4002118(arg1)
    print("OnSubFinish4002118")
end

function Quest40021:OnSubFailed4002118(arg1)
    print("OnSubFailed4002118")
end

return Quest40021
