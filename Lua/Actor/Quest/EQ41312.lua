require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41312 = class("Quest41312", QuestActorProxy)
Quest41312.defaultAlias = "Quest41312"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41312:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41312:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4131201"] = self.OnSubStart4131201,
        ["4131202"] = self.OnSubStart4131202,
        ["4131203"] = self.OnSubStart4131203,
        ["4131204"] = self.OnSubStart4131204,
        ["4131205"] = self.OnSubStart4131205,
        ["4131235"] = self.OnSubStart4131235,
        ["4131206"] = self.OnSubStart4131206,
        ["4131208"] = self.OnSubStart4131208,
        ["4131209"] = self.OnSubStart4131209,
        ["4131230"] = self.OnSubStart4131230,
        ["4131231"] = self.OnSubStart4131231,
        ["4131232"] = self.OnSubStart4131232,
        ["4131233"] = self.OnSubStart4131233,
        ["4131214"] = self.OnSubStart4131214,
        ["4131210"] = self.OnSubStart4131210,
        ["4131211"] = self.OnSubStart4131211,
        ["4131215"] = self.OnSubStart4131215,
        ["4131216"] = self.OnSubStart4131216,
        ["4131217"] = self.OnSubStart4131217,
        ["4131234"] = self.OnSubStart4131234,
        ["4131218"] = self.OnSubStart4131218,
        ["4131219"] = self.OnSubStart4131219,
        ["4131220"] = self.OnSubStart4131220,
        ["4131221"] = self.OnSubStart4131221,
        ["4131223"] = self.OnSubStart4131223,
        ["4131224"] = self.OnSubStart4131224,
        ["4131225"] = self.OnSubStart4131225,
        ["4131226"] = self.OnSubStart4131226,
        ["4131227"] = self.OnSubStart4131227,
        ["4131228"] = self.OnSubStart4131228,
        ["4131207"] = self.OnSubStart4131207,
        ["4131212"] = self.OnSubStart4131212,
        ["4131213"] = self.OnSubStart4131213,
        ["4131229"] = self.OnSubStart4131229,
        ["4131222"] = self.OnSubStart4131222
    }
end

function Quest41312:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4131201"] = self.OnSubFinish4131201,
        ["4131202"] = self.OnSubFinish4131202,
        ["4131203"] = self.OnSubFinish4131203,
        ["4131204"] = self.OnSubFinish4131204,
        ["4131205"] = self.OnSubFinish4131205,
        ["4131235"] = self.OnSubFinish4131235,
        ["4131206"] = self.OnSubFinish4131206,
        ["4131208"] = self.OnSubFinish4131208,
        ["4131209"] = self.OnSubFinish4131209,
        ["4131230"] = self.OnSubFinish4131230,
        ["4131231"] = self.OnSubFinish4131231,
        ["4131232"] = self.OnSubFinish4131232,
        ["4131233"] = self.OnSubFinish4131233,
        ["4131214"] = self.OnSubFinish4131214,
        ["4131210"] = self.OnSubFinish4131210,
        ["4131211"] = self.OnSubFinish4131211,
        ["4131215"] = self.OnSubFinish4131215,
        ["4131216"] = self.OnSubFinish4131216,
        ["4131217"] = self.OnSubFinish4131217,
        ["4131234"] = self.OnSubFinish4131234,
        ["4131218"] = self.OnSubFinish4131218,
        ["4131219"] = self.OnSubFinish4131219,
        ["4131220"] = self.OnSubFinish4131220,
        ["4131221"] = self.OnSubFinish4131221,
        ["4131223"] = self.OnSubFinish4131223,
        ["4131224"] = self.OnSubFinish4131224,
        ["4131225"] = self.OnSubFinish4131225,
        ["4131226"] = self.OnSubFinish4131226,
        ["4131227"] = self.OnSubFinish4131227,
        ["4131228"] = self.OnSubFinish4131228,
        ["4131207"] = self.OnSubFinish4131207,
        ["4131212"] = self.OnSubFinish4131212,
        ["4131213"] = self.OnSubFinish4131213,
        ["4131229"] = self.OnSubFinish4131229,
        ["4131222"] = self.OnSubFinish4131222
    }
end

function Quest41312:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4131201"] = self.OnSubFailed4131201,
        ["4131202"] = self.OnSubFailed4131202,
        ["4131203"] = self.OnSubFailed4131203,
        ["4131204"] = self.OnSubFailed4131204,
        ["4131205"] = self.OnSubFailed4131205,
        ["4131206"] = self.OnSubFailed4131206,
        ["4131208"] = self.OnSubFailed4131208,
        ["4131209"] = self.OnSubFailed4131209,
        ["4131230"] = self.OnSubFailed4131230,
        ["4131231"] = self.OnSubFailed4131231,
        ["4131232"] = self.OnSubFailed4131232,
        ["4131233"] = self.OnSubFailed4131233,
        ["4131214"] = self.OnSubFailed4131214,
        ["4131210"] = self.OnSubFailed4131210,
        ["4131211"] = self.OnSubFailed4131211,
        ["4131215"] = self.OnSubFailed4131215,
        ["4131216"] = self.OnSubFailed4131216,
        ["4131217"] = self.OnSubFailed4131217,
        ["4131234"] = self.OnSubFailed4131234,
        ["4131218"] = self.OnSubFailed4131218,
        ["4131219"] = self.OnSubFailed4131219,
        ["4131220"] = self.OnSubFailed4131220,
        ["4131221"] = self.OnSubFailed4131221,
        ["4131223"] = self.OnSubFailed4131223,
        ["4131224"] = self.OnSubFailed4131224,
        ["4131225"] = self.OnSubFailed4131225,
        ["4131226"] = self.OnSubFailed4131226,
        ["4131227"] = self.OnSubFailed4131227,
        ["4131228"] = self.OnSubFailed4131228,
        ["4131207"] = self.OnSubFailed4131207,
        ["4131212"] = self.OnSubFailed4131212,
        ["4131213"] = self.OnSubFailed4131213,
        ["4131229"] = self.OnSubFailed4131229,
        ["4131222"] = self.OnSubFailed4131222
    }
end

function Quest41312:Start()
    print("Start")
end

function Quest41312:OnDestroy()
    print("OnDestroy")
end

function Quest41312:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41312:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41312:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc205601Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc242801Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.GaiaData.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc146101Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10207Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10208Data.alias, 3)
        self:UnSpawn(gadgets.Gadget70710041Data.alias)
        self:UnSpawn(gadgets.Gadget70710042Data.alias)
        self:UnSpawn(gadgets.Gadget70710043Data.alias)
        self:UnSpawn(gadgets.Gadget70700017Data.alias)
        self:NotifyTo(npcs.Npc2056Data.alias, 0, true)
    end)
end

function Quest41312:DestoryPaimon()
    print("DestoryPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest41312:CheckCount()
    print("CheckCount")
    local subQuestState = self:GetSubQuestState(4131209)
    local v = self:GetSubQuestState(4131230)
    local subQuestState2 = self:GetSubQuestState(4131231)
    local n = subQuestState + v + subQuestState2
    if n == 7 then
        self:NarratorOnlyTaskLegacy(datas.NarratorTable)
    elseif n == 8 then
        self:NarratorOnlyTaskLegacy(datas.NarratorTable2)
    end
end

function Quest41312:OnSubStart4131201(arg1)
    print("OnSubStart4131201")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 0)
        self:GetQuestNpcActor(npcs.Npc30039Data.alias):TurnTo(M.Euler2DirXZ({x = 0, y = 113.97, z = 0}))
    end)
end

function Quest41312:OnSubFinish4131201(arg1)
    print("OnSubFinish4131201")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131201(arg1)
    print("OnSubFailed4131201")
end

function Quest41312:OnSubStart4131202(arg1)
    print("OnSubStart4131202")
end

function Quest41312:OnSubFinish4131202(arg1)
    print("OnSubFinish4131202")
end

function Quest41312:OnSubFailed4131202(arg1)
    print("OnSubFailed4131202")
end

function Quest41312:OnSubStart4131203(arg1)
    print("OnSubStart4131203")
end

function Quest41312:OnSubFinish4131203(arg1)
    print("OnSubFinish4131203")
end

function Quest41312:OnSubFailed4131203(arg1)
    print("OnSubFailed4131203")
end

function Quest41312:OnSubStart4131204(arg1)
    print("OnSubStart4131204")
end

function Quest41312:OnSubFinish4131204(arg1)
    print("OnSubFinish4131204")
end

function Quest41312:OnSubFailed4131204(arg1)
    print("OnSubFailed4131204")
end

function Quest41312:OnSubStart4131205(arg1)
    print("OnSubStart4131205")
end

function Quest41312:OnSubFinish4131205(arg1)
    print("OnSubFinish4131205")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131205(arg1)
    print("OnSubFailed4131205")
end

function Quest41312:OnSubStart4131235(arg1)
    print("OnSubStart4131235")
    actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").pos, sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").rot, true)
    self:CreateQuestNpc(arg1, npcs.Npc10205Data.id)
    self:GetQuestNpcActor(npcs.Npc10205Data.alias):DoFreeStyle(1280, false, nil, true, true)
    self:SetQuestVar(4131201, 0, 1)
end

function Quest41312:OnSubFinish4131235(arg1)
    print("OnSubFinish4131235")
    self:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
    local actor = actorMgr:GetActor("Q40007Trigger1")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("Q40007Trigger2")
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest41312:OnSubStart4131206(arg1)
    print("OnSubStart4131206")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q41312Trigger1_.alias, datas.Q41312Trigger1_.script, datas.Q41312Trigger1_.id, 0, datas.Q41312Trigger1_.point.pos, datas.Q41312Trigger1_.point.rot, true, false, 3)
end

function Quest41312:OnSubFinish4131206(arg1)
    print("OnSubFinish4131206")
    self.EnablePlayerInput(self, false)
    self.NarratorOnlyTaskByData(self, datas.NarratorWithId)
    self.EnterSceneLookCamera(self, sceneData:GetDummyPoint(3, "Q40002Target1").pos, 0, 2, false, false)
    self.CallDelay(self, 2, function()
        self:EnablePlayerInput(true)
    end)
end

function Quest41312:OnSubFailed4131206(arg1)
    print("OnSubFailed4131206")
end

function Quest41312:OnSubStart4131208(arg1)
    print("OnSubStart4131208")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
end

function Quest41312:OnSubFinish4131208(arg1)
    print("OnSubFinish4131208")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131208(arg1)
    print("OnSubFailed4131208")
end

function Quest41312:OnSubStart4131209(arg1)
    print("OnSubStart4131209")
    self:UnSpawn(gadgets.Gadget70710041Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710041Data.id, 1, 0)
end

function Quest41312:OnSubFinish4131209(arg1)
    print("OnSubFinish4131209")
    self:CheckCount()
end

function Quest41312:OnSubFailed4131209(arg1)
    print("OnSubFailed4131209")
end

function Quest41312:OnSubStart4131230(arg1)
    print("OnSubStart4131230")
    self:UnSpawn(gadgets.Gadget70710042Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710042Data.id, 1, 0)
end

function Quest41312:OnSubFinish4131230(arg1)
    print("OnSubFinish4131230")
    self:CheckCount()
end

function Quest41312:OnSubFailed4131230(arg1)
    print("OnSubFailed4131230")
end

function Quest41312:OnSubStart4131231(arg1)
    print("OnSubStart4131231")
    self:UnSpawn(gadgets.Gadget70710043Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710043Data.id, 1, 0)
end

function Quest41312:OnSubFinish4131231(arg1)
    print("OnSubFinish4131231")
    self:CheckCount()
end

function Quest41312:OnSubFailed4131231(arg1)
    print("OnSubFailed4131231")
end

function Quest41312:OnSubStart4131232(arg1)
    print("OnSubStart4131232")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
end

function Quest41312:OnSubFinish4131232(arg1)
    print("OnSubFinish4131232")
end

function Quest41312:OnSubFailed4131232(arg1)
    print("OnSubFailed4131232")
end

function Quest41312:OnSubStart4131233(arg1)
    print("OnSubStart4131233")
end

function Quest41312:OnSubFinish4131233(arg1)
    print("OnSubFinish4131233")
end

function Quest41312:OnSubFailed4131233(arg1)
    print("OnSubFailed4131233")
end

function Quest41312:OnSubStart4131214(arg1)
    print("OnSubStart4131214")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest41312:OnSubFinish4131214(arg1)
    print("OnSubFinish4131214")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131214(arg1)
    print("OnSubFailed4131214")
end

function Quest41312:OnSubStart4131210(arg1)
    print("OnSubStart4131210")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710303Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710303Data.id, 1, 0)
end

function Quest41312:OnSubFinish4131210(arg1)
    print("OnSubFinish4131210")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4)
end

function Quest41312:OnSubFailed4131210(arg1)
    print("OnSubFailed4131210")
end

function Quest41312:OnSubStart4131211(arg1)
    print("OnSubStart4131211")
    self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
end

function Quest41312:OnSubFinish4131211(arg1)
    print("OnSubFinish4131211")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131211(arg1)
    print("OnSubFailed4131211")
end

function Quest41312:OnSubStart4131215(arg1)
    print("OnSubStart4131215")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc205601Data.id, 1)
        self:NotifyTo(npcs.Npc2056Data.alias, 1, true)
        self:NotifyTo(npcs.Npc2025Data.alias, 1, true)
    end)
end

function Quest41312:OnSubFinish4131215(arg1)
    print("OnSubFinish4131215")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc202501Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc205601Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc30039Data.alias, 3)
        self:NotifyTo(npcs.Npc2025Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2056Data.alias, 0, true)
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131215(arg1)
    print("OnSubFailed4131215")
end

function Quest41312:OnSubStart4131216(arg1)
    print("OnSubStart4131216")
    actorMgr:CreateActorWithPos(datas.Q41312Trigger2_.alias, datas.Q41312Trigger2_.script, datas.Q41312Trigger2_.id, 0, datas.Q41312Trigger2_.point.pos, datas.Q41312Trigger2_.point.rot, true, false, 3)
end

function Quest41312:OnSubFinish4131216(arg1)
    print("OnSubFinish4131216")
    self:NarratorOnlyTaskByData(datas.NarratorWithId6)
end

function Quest41312:OnSubFailed4131216(arg1)
    print("OnSubFailed4131216")
end

function Quest41312:OnSubStart4131217(arg1)
    print("OnSubStart4131217")
end

function Quest41312:OnSubFinish4131217(arg1)
    print("OnSubFinish4131217")
end

function Quest41312:OnSubFailed4131217(arg1)
    print("OnSubFailed4131217")
end

function Quest41312:OnSubStart4131234(arg1)
    print("OnSubStart4131234")
end

function Quest41312:OnSubFinish4131234(arg1)
    print("OnSubFinish4131234")
end

function Quest41312:OnSubFailed4131234(arg1)
    print("OnSubFailed4131234")
end

function Quest41312:OnSubStart4131218(arg1)
    print("OnSubStart4131218")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc242801Data.alias})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, npcs.Npc242801Data.id, 1)
            self:RequestInteraction(npcs.Npc242801Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41312:OnSubFinish4131218(arg1)
    print("OnSubFinish4131218")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc242801Data.alias, 3)
    end)
end

function Quest41312:OnSubFailed4131218(arg1)
    print("OnSubFailed4131218")
end

function Quest41312:OnSubStart4131219(arg1)
    print("OnSubStart4131219")
    self:UnSpawn(gadgets.Gadget70700017Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70700017Data.id, 1, 0)
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q41312Trigger1_.alias, datas.Q41312Trigger1_.script, datas.Q41312Trigger1_.id, 0, datas.Q41312Trigger1_.point.pos, datas.Q41312Trigger1_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q41312Trigger6_.alias, datas.Q41312Trigger6_.script, datas.Q41312Trigger6_.id, 0, datas.Q41312Trigger6_.point.pos, datas.Q41312Trigger6_.point.rot, true, false, 3)
end

function Quest41312:OnSubFinish4131219(arg1)
    print("OnSubFinish4131219")
end

function Quest41312:OnSubFailed4131219(arg1)
    print("OnSubFailed4131219")
end

function Quest41312:OnSubStart4131220(arg1)
    print("OnSubStart4131220")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest41312:OnSubFinish4131220(arg1)
    print("OnSubFinish4131220")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
    end)
end

function Quest41312:OnSubFailed4131220(arg1)
    print("OnSubFailed4131220")
end

function Quest41312:OnSubStart4131221(arg1)
    print("OnSubStart4131221")
end

function Quest41312:OnSubFinish4131221(arg1)
    print("OnSubFinish4131221")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131221(arg1)
    print("OnSubFailed4131221")
end

function Quest41312:OnSubStart4131223(arg1)
    print("OnSubStart4131223")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 0)
end

function Quest41312:OnSubFinish4131223(arg1)
    print("OnSubFinish4131223")
    self.ActionSafeCall(self, function()
        self:UnSpawn(gadgets.Gadget70700017Data.alias)
        self:DestoryPaimon()
    end)
end

function Quest41312:OnSubFailed4131223(arg1)
    print("OnSubFailed4131223")
end

function Quest41312:OnSubStart4131224(arg1)
    print("OnSubStart4131224")
    self:CreateQuestNpc(arg1, npcs.Npc146101Data.id)
end

function Quest41312:OnSubFinish4131224(arg1)
    print("OnSubFinish4131224")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc146101Data.alias, 3)
    end)
end

function Quest41312:OnSubFailed4131224(arg1)
    print("OnSubFailed4131224")
end

function Quest41312:OnSubStart4131225(arg1)
    print("OnSubStart4131225")
    self:CreateQuestNpc(arg1, npcs.Npc10207Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc10208Data.id)
    actorMgr:CreateActorWithPos(datas.Q41312Trigger3_.alias, datas.Q41312Trigger3_.script, datas.Q41312Trigger3_.id, 0, datas.Q41312Trigger3_.point.pos, datas.Q41312Trigger3_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10207Data.alias):DoFreeStyle(1120, false, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10208Data.alias):DoFreeStyle(1230, false, nil, true, true)
end

function Quest41312:OnSubFinish4131225(arg1)
    print("OnSubFinish4131225")
end

function Quest41312:OnSubFailed4131225(arg1)
    print("OnSubFailed4131225")
end

function Quest41312:OnSubStart4131226(arg1)
    print("OnSubStart4131226")
end

function Quest41312:OnSubFinish4131226(arg1)
    print("OnSubFinish4131226")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc10207Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10208Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
    end)
end

function Quest41312:OnSubFailed4131226(arg1)
    print("OnSubFailed4131226")
end

function Quest41312:OnSubStart4131227(arg1)
    print("OnSubStart4131227")
    actorMgr:CreateActorWithPos(datas.Q41312Trigger5_.alias, datas.Q41312Trigger5_.script, datas.Q41312Trigger5_.id, 0, datas.Q41312Trigger5_.point.pos, datas.Q41312Trigger5_.point.rot, true, false, 3)
end

function Quest41312:OnSubFinish4131227(arg1)
    print("OnSubFinish4131227")
    local actor = actorMgr:GetActor(datas.Q41312Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest41312:OnSubFailed4131227(arg1)
    print("OnSubFailed4131227")
    local actor = actorMgr:GetActor(datas.Q41312Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest41312:OnSubStart4131228(arg1)
    print("OnSubStart4131228")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10207Data.alias, npcs.Npc10208Data.alias})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, npcs.Npc10207Data.id, 1)
            self:CreateQuestNpc(arg1, npcs.Npc10208Data.id, 1)
            self:RequestInteraction(npcs.Npc10207Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41312:OnSubFinish4131228(arg1)
    print("OnSubFinish4131228")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10207Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10208Data.alias, 3)
        self:DestoryPaimon()
        self:CallDelay(2, function()
            self:NarratorOnlyTaskByData(datas.NarratorWithId5)
        end)
    end)
end

function Quest41312:OnSubFailed4131228(arg1)
    print("OnSubFailed4131228")
end

function Quest41312:OnSubStart4131207(arg1)
    print("OnSubStart4131207")
    self:CreateQuestNpc(arg1, npcs.Npc10205Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q41312Trigger4_.alias, datas.Q41312Trigger4_.script, datas.Q41312Trigger4_.id, 0, datas.Q41312Trigger4_.point.pos, datas.Q41312Trigger4_.point.rot, true, false, 3)
end

function Quest41312:OnSubFinish4131207(arg1)
    print("OnSubFinish4131207")
end

function Quest41312:OnSubFailed4131207(arg1)
    print("OnSubFailed4131207")
end

function Quest41312:OnSubStart4131212(arg1)
    print("OnSubStart4131212")
    actorMgr:CreateActorWithPos(datas.Q41312Trigger7_.alias, datas.Q41312Trigger7_.script, datas.Q41312Trigger7_.id, 0, datas.Q41312Trigger7_.point.pos, datas.Q41312Trigger7_.point.rot, true, false, 3)
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest41312:OnSubFinish4131212(arg1)
    print("OnSubFinish4131212")
    self.ActionSafeCall(self, function()
        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
        self:DestoryPaimon()
    end)

    self.SafeDestroyQuestNpc(self, npcs.Npc10205Data.alias, 3)
end

function Quest41312:OnSubFailed4131212(arg1)
    print("OnSubFailed4131212")
end

function Quest41312:OnSubStart4131213(arg1)
    print("OnSubStart4131213")
end

function Quest41312:OnSubFinish4131213(arg1)
    print("OnSubFinish4131213")
end

function Quest41312:OnSubFailed4131213(arg1)
    print("OnSubFailed4131213")
end

function Quest41312:OnSubStart4131229(arg1)
    print("OnSubStart4131229")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10205Data.alias})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, npcs.Npc10205Data.id, 0)
            self:RequestInteraction(npcs.Npc10205Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41312:OnSubFinish4131229(arg1)
    print("OnSubFinish4131229")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
    end)

    self.SafeDestroyQuestNpc(self, npcs.Npc10205Data.alias, 3)
end

function Quest41312:OnSubFailed4131229(arg1)
    print("OnSubFailed4131229")
end

function Quest41312:OnSubStart4131222(arg1)
    print("OnSubStart4131222")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc205601Data.id, 1)
        self:NotifyTo(npcs.Npc2056Data.alias, 1, true)
    end)
end

function Quest41312:OnSubFinish4131222(arg1)
    print("OnSubFinish4131222")
    self.ActionSafeCall(self, function()
        self:DestoryPaimon()
        self:DestroyQuestNpcActor(npcs.Npc205601Data.alias, 3)
        self:NotifyTo(npcs.Npc2056Data.alias, 0, true)
    end)
end

function Quest41312:OnSubFailed4131222(arg1)
    print("OnSubFailed4131222")
end

function Quest41312:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 41312 Thief Move")
        local questVar = self.GetQuestVar(self, 4131201, 0)
        if questVar == 1 then
            self.SetQuestVar(self, 4131201, 0, 2)
            local actor = actorMgr:GetActor("Q40007Trigger1")
            if actor ~= nil then
                actor:DestroySelf(false)
            end

            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10205Data.alias)
            questNpcActor:EnableInteraction(false)
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:WalkToRouteTask({
                sceneData:GetDummyPoint(3, "Q40002Target1").pos,
                sceneData:GetDummyPoint(3, "Q40007_ThiefRout2").pos
            }, function(arg1, arg2)
                actorMgr:CreateActorWithPos("Q40007Trigger2", "Actor/Gadget/Q40007Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q40007_ThiefRout2").pos, sceneData:GetDummyPoint(3, "Q40007_ThiefRout2").rot, true)
                self:CallDelay(1, function(arg1_2)
                    arg1:DoFreeStyle(1280, true, nil, true, true)
                end)

                arg1.EnableInteraction(arg1, true)
            end)
        elseif questVar == 2 then
            self.SetQuestVar(self, 4131201, 0, 1)
            local actor = actorMgr:GetActor("Q40007Trigger2")
            if actor ~= nil then
                actor:DestroySelf(false)
            end

            local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc10205Data.alias)
            questNpcActor:EnableInteraction(false)
            questNpcActor:DoFreeStateTrigger()
            questNpcActor:WalkToRouteTask({
                sceneData:GetDummyPoint(3, "Q40002Target1").pos,
                sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").pos
            }, function(arg1, arg2)
                actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").pos, sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").rot, true)
                self:CallDelay(1, function(arg1_2)
                    arg1:DoFreeStyle(1280, true, nil, true, true)
                end)

                arg1.EnableInteraction(arg1, true)
            end)
        end
    elseif arg1 == 2 then
        print("Talk 4131227 Show Book")
        self.ShowReadingDialog(self, 100242)
    elseif arg1 == 3 then
        print("Talk 4131212 Attack Mask")
        globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    end
end

return Quest41312
