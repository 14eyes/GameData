require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41112 = class("Quest41112", QuestActorProxy)
Quest41112.defaultAlias = "Quest41112"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41112:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4111200"] = self.OnSubStart4111200,
        ["4111201"] = self.OnSubStart4111201,
        ["4111223"] = self.OnSubStart4111223,
        ["4111214"] = self.OnSubStart4111214,
        ["4111215"] = self.OnSubStart4111215,
        ["4111216"] = self.OnSubStart4111216,
        ["4111217"] = self.OnSubStart4111217,
        ["4111220"] = self.OnSubStart4111220,
        ["4111218"] = self.OnSubStart4111218,
        ["4111224"] = self.OnSubStart4111224,
        ["4111202"] = self.OnSubStart4111202,
        ["4111203"] = self.OnSubStart4111203,
        ["4111204"] = self.OnSubStart4111204,
        ["4111205"] = self.OnSubStart4111205,
        ["4111208"] = self.OnSubStart4111208,
        ["4111209"] = self.OnSubStart4111209,
        ["4111210"] = self.OnSubStart4111210,
        ["4111219"] = self.OnSubStart4111219,
        ["4111221"] = self.OnSubStart4111221,
        ["4111206"] = self.OnSubStart4111206,
        ["4111227"] = self.OnSubStart4111227,
        ["4111222"] = self.OnSubStart4111222,
        ["4111207"] = self.OnSubStart4111207,
        ["4111225"] = self.OnSubStart4111225,
        ["4111211"] = self.OnSubStart4111211,
        ["4111212"] = self.OnSubStart4111212,
        ["4111226"] = self.OnSubStart4111226,
        ["4111213"] = self.OnSubStart4111213
    }
end

function Quest41112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4111200"] = self.OnSubFinish4111200,
        ["4111201"] = self.OnSubFinish4111201,
        ["4111223"] = self.OnSubFinish4111223,
        ["4111214"] = self.OnSubFinish4111214,
        ["4111215"] = self.OnSubFinish4111215,
        ["4111216"] = self.OnSubFinish4111216,
        ["4111217"] = self.OnSubFinish4111217,
        ["4111220"] = self.OnSubFinish4111220,
        ["4111218"] = self.OnSubFinish4111218,
        ["4111224"] = self.OnSubFinish4111224,
        ["4111202"] = self.OnSubFinish4111202,
        ["4111203"] = self.OnSubFinish4111203,
        ["4111204"] = self.OnSubFinish4111204,
        ["4111205"] = self.OnSubFinish4111205,
        ["4111208"] = self.OnSubFinish4111208,
        ["4111209"] = self.OnSubFinish4111209,
        ["4111210"] = self.OnSubFinish4111210,
        ["4111219"] = self.OnSubFinish4111219,
        ["4111221"] = self.OnSubFinish4111221,
        ["4111206"] = self.OnSubFinish4111206,
        ["4111227"] = self.OnSubFinish4111227,
        ["4111222"] = self.OnSubFinish4111222,
        ["4111207"] = self.OnSubFinish4111207,
        ["4111225"] = self.OnSubFinish4111225,
        ["4111211"] = self.OnSubFinish4111211,
        ["4111212"] = self.OnSubFinish4111212,
        ["4111226"] = self.OnSubFinish4111226,
        ["4111213"] = self.OnSubFinish4111213
    }
end

function Quest41112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4111200"] = self.OnSubFailed4111200,
        ["4111201"] = self.OnSubFailed4111201,
        ["4111223"] = self.OnSubFailed4111223,
        ["4111214"] = self.OnSubFailed4111214,
        ["4111215"] = self.OnSubFailed4111215,
        ["4111216"] = self.OnSubFailed4111216,
        ["4111217"] = self.OnSubFailed4111217,
        ["4111220"] = self.OnSubFailed4111220,
        ["4111218"] = self.OnSubFailed4111218,
        ["4111224"] = self.OnSubFailed4111224,
        ["4111202"] = self.OnSubFailed4111202,
        ["4111203"] = self.OnSubFailed4111203,
        ["4111204"] = self.OnSubFailed4111204,
        ["4111205"] = self.OnSubFailed4111205,
        ["4111208"] = self.OnSubFailed4111208,
        ["4111209"] = self.OnSubFailed4111209,
        ["4111210"] = self.OnSubFailed4111210,
        ["4111219"] = self.OnSubFailed4111219,
        ["4111221"] = self.OnSubFailed4111221,
        ["4111206"] = self.OnSubFailed4111206,
        ["4111227"] = self.OnSubFailed4111227,
        ["4111222"] = self.OnSubFailed4111222,
        ["4111207"] = self.OnSubFailed4111207,
        ["4111225"] = self.OnSubFailed4111225,
        ["4111211"] = self.OnSubFailed4111211,
        ["4111212"] = self.OnSubFailed4111212,
        ["4111226"] = self.OnSubFailed4111226,
        ["4111213"] = self.OnSubFailed4111213
    }
end

function Quest41112:Start()
    print("Start")
end

function Quest41112:OnDestroy()
    print("OnDestroy")
end

function Quest41112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41112:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc10011Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.Npc30036Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc30037Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc10095Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc10013Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc1531Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc30012Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc2420Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc2405Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc153701Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc30013Data.alias):Destroy(false)
        self:GetQuestNpcActor(npcs.Npc2202Data.alias):Destroy(false)
        self:NotifyTo(npcs.Npc1537Data.alias, 0, true)
        self:UnSpawn(gadgets.Gadget70300118Data.alias)
        self:UnSpawn(gadgets.Gadget70300118Data2.alias)
        self:UnSpawn(datas.Q41112Trigger1_.alias)
        self:UnSpawn(datas.Q41112Trigger2_.alias)
        self:UnSpawn(datas.Q41112Trigger3_.alias)
        self:UnSpawn(datas.Q41112Trigger4_.alias)
        self:UnSpawn(datas.Q41112Trigger5_.alias)
        self:UnSpawn(datas.Q41112Trigger6_.alias)
        self:UnSpawn(datas.Q41112Trigger7_.alias)
        self:UnSpawn(datas.Q41112Trigger8_.alias)
    end)
end

function Quest41112:DestoryAllNPC()
    print("DestoryAllNPC")
    self:GetQuestNpcActor(npcs.Npc10011Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc30036Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc30037Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc10095Data.alias):Destroy(false)
end

function Quest41112:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    elseif arg1 == 2 then
    end
end

function Quest41112:OnSubStart4111200(arg1)
    print("OnSubStart4111200")
    self:CreateQuestNpc(arg1, npcs.Npc153701Data.id, 0)
    self:NotifyTo(npcs.Npc1537Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10011Data.alias)
    questNpcActor:DoFreeStyleTask(1230, true)
    local v = self:GetQuestNpcActor(npcs.Npc153701Data.alias)
    v:DoFreeStyleTask(1120, true)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 0)
end

function Quest41112:OnSubFinish4111200(arg1)
    print("OnSubFinish4111200")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:NotifyTo(npcs.Npc1537Data.alias, 0, true)
        self:GetQuestNpcActor(npcs.Npc153701Data.alias):Destroy(false)
    end)
end

function Quest41112:OnSubFailed4111200(arg1)
    print("OnSubFailed4111200")
end

function Quest41112:OnSubStart4111201(arg1)
    print("OnSubStart4111201")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 0)
    actorMgr:DestroyEntityActor("Npc153170824", 3)
end

function Quest41112:OnSubFinish4111201(arg1)
    print("OnSubFinish4111201")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:DestroyQuestNpcActor(npcs.Npc1531Data.alias, 3)
    end)
end

function Quest41112:OnSubFailed4111201(arg1)
    print("OnSubFailed4111201")
end

function Quest41112:OnSubStart4111223(arg1)
    print("OnSubStart4111223")
    self:CreateQuestNpc(arg1, npcs.Npc30012Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30012Data.alias):DoFreeStyle(4190, true)
    actorMgr:CreateActorWithPos(datas.Q41112Trigger5_.alias, datas.Q41112Trigger5_.script, datas.Q41112Trigger5_.id, 0, datas.Q41112Trigger5_.point.pos, datas.Q41112Trigger5_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111223(arg1)
    print("OnSubFinish4111223")
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):Destroy(false)
    globalActor:NarratorOnlyTaskByData(datas.NarratorWithId5, nil, 41112)
end

function Quest41112:OnSubFailed4111223(arg1)
    print("OnSubFailed4111223")
end

function Quest41112:OnSubStart4111214(arg1)
    print("OnSubStart4111214")
    self:CreateQuestNpc(arg1, npcs.Npc2420Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2405Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q41112Trigger6_.alias, datas.Q41112Trigger6_.script, datas.Q41112Trigger6_.id, 0, datas.Q41112Trigger6_.point.pos, datas.Q41112Trigger6_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111214(arg1)
    print("OnSubFinish4111214")
end

function Quest41112:OnSubFailed4111214(arg1)
    print("OnSubFailed4111214")
end

function Quest41112:OnSubStart4111215(arg1)
    print("OnSubStart4111215")
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):Destroy(false)
end

function Quest41112:OnSubFinish4111215(arg1)
    print("OnSubFinish4111215")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111215(arg1)
    print("OnSubFailed4111215")
end

function Quest41112:OnSubStart4111216(arg1)
    print("OnSubStart4111216")
end

function Quest41112:OnSubFinish4111216(arg1)
    print("OnSubFinish4111216")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111216(arg1)
    print("OnSubFailed4111216")
end

function Quest41112:OnSubStart4111217(arg1)
    print("OnSubStart4111217")
end

function Quest41112:OnSubFinish4111217(arg1)
    print("OnSubFinish4111217")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111217(arg1)
    print("OnSubFailed4111217")
end

function Quest41112:OnSubStart4111220(arg1)
    print("OnSubStart4111220")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger2_.alias, datas.Q41112Trigger2_.script, datas.Q41112Trigger2_.id, 0, datas.Q41112Trigger2_.point.pos, datas.Q41112Trigger2_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111220(arg1)
    print("OnSubFinish4111220")
    globalActor:NarratorOnlyTaskByData(datas.NarratorWithId5, nil, 41112)
end

function Quest41112:OnSubFailed4111220(arg1)
    print("OnSubFailed4111220")
end

function Quest41112:OnSubStart4111218(arg1)
    print("OnSubStart4111218")
    self:GetQuestNpcActor(npcs.Npc2420Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc2405Data.alias):Destroy(false)
    self:GetQuestNpcActor(npcs.Npc30012Data.alias):DoFreeStyle(4190, false)
    self:CreateSpeechBubbleTask(npcs.Npc30012Data.id, 411122001, 3, true, 4, 5)
end

function Quest41112:OnSubFinish4111218(arg1)
    print("OnSubFinish4111218")
    self:ClearSpeechBubbleTask()
end

function Quest41112:OnSubFailed4111218(arg1)
    print("OnSubFailed4111218")
end

function Quest41112:OnSubStart4111224(arg1)
    self.CallDelay(self, 2, function()
        self:RequestInteraction(npcs.Npc30012Data.alias)
    end)

    self.GetQuestNpcActor(self, npcs.Npc30012Data.alias):DoFreeStyle(1240, true)
end

function Quest41112:OnSubFinish4111224(arg1)
    print("OnSubFinish4111224")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111224(arg1)
    print("OnSubFailed4111224")
end

function Quest41112:OnSubStart4111202(arg1)
    print("OnSubStart4111202")
    self:CreateQuestNpc(arg1, npcs.Npc10013Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q41112Trigger1_.alias, datas.Q41112Trigger1_.script, datas.Q41112Trigger1_.id, 0, datas.Q41112Trigger1_.point.pos, datas.Q41112Trigger1_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30013Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10013Data.alias)
    questNpcActor:EnableHeadCtrl(false)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
end

function Quest41112:OnSubFinish4111202(arg1)
    print("OnSubFinish4111202")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 41112)
    self:EnterSceneLookCamera({x = 1134.803, y = 203, z = 329.4618}, 0, 3, true, false)
end

function Quest41112:OnSubFailed4111202(arg1)
    print("OnSubFailed4111202")
end

function Quest41112:OnSubStart4111203(arg1)
    print("OnSubStart4111203")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10013Data.alias)
    questNpcActor:EnableHeadCtrl(false)
    questNpcActor:DoFreeStyle(1190, false, nil, true, true)
end

function Quest41112:OnSubFinish4111203(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10013Data.alias, 0)
        arg1:DestroyQuestNpcActor(npcs.Npc30016Data.alias, 0)
        arg1:DestroyQuestNpcActor(npcs.Npc30013Data.alias, 0)
        arg1:DestoryAllNPC()
    end)
end

function Quest41112:OnSubFailed4111203(arg1)
    print("OnSubFailed4111203")
end

function Quest41112:OnSubStart4111204(arg1)
    print("OnSubStart4111204")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger7_.alias, datas.Q41112Trigger7_.script, datas.Q41112Trigger7_.id, 0, datas.Q41112Trigger7_.point.pos, datas.Q41112Trigger7_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111204(arg1)
    print("OnSubFinish4111204")
end

function Quest41112:OnSubFailed4111204(arg1)
    print("OnSubFailed4111204")
end

function Quest41112:OnSubStart4111205(arg1)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10011Data2.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 0)
        self:RequestInteraction(npcs.Npc10011Data2.alias)
    end, nil, questNpcCreateTask)
end

function Quest41112:OnSubFinish4111205(arg1)
    print("OnSubFinish4111205")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111205(arg1)
    print("OnSubFailed4111205")
end

function Quest41112:OnSubStart4111208(arg1)
    print("OnSubStart4111208")
end

function Quest41112:OnSubFinish4111208(arg1)
    print("OnSubFinish4111208")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111208(arg1)
    print("OnSubFailed4111208")
end

function Quest41112:OnSubStart4111209(arg1)
    print("OnSubStart4111209")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger9_.alias, datas.Q41112Trigger9_.script, datas.Q41112Trigger9_.id, 0, datas.Q41112Trigger9_.point.pos, datas.Q41112Trigger9_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111209(arg1)
    print("OnSubFinish4111209")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111209(arg1)
    print("OnSubFailed4111209")
end

function Quest41112:OnSubStart4111210(arg1)
    print("OnSubStart4111210")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger10_.alias, datas.Q41112Trigger10_.script, datas.Q41112Trigger10_.id, 0, datas.Q41112Trigger10_.point.pos, datas.Q41112Trigger10_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111210(arg1)
    print("OnSubFinish4111210")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111210(arg1)
    print("OnSubFailed4111210")
end

function Quest41112:OnSubStart4111219(arg1)
    print("OnSubStart4111219")
    self:CreateQuestNpc(arg1, npcs.Npc2202Data.id, 0)
end

function Quest41112:OnSubFinish4111219(arg1)
    print("OnSubFinish4111219")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111219(arg1)
    print("OnSubFailed4111219")
end

function Quest41112:OnSubStart4111221(arg1)
    print("OnSubStart4111221")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger3_.alias, datas.Q41112Trigger3_.script, datas.Q41112Trigger3_.id, 0, datas.Q41112Trigger3_.point.pos, datas.Q41112Trigger3_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111221(arg1)
    print("OnSubFinish4111221")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2, nil, 41112)
    self:DestroyQuestNpcActor(npcs.Npc2202Data.alias, 3)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4111206Meteorite").pos, 0, 3, true, false)
end

function Quest41112:OnSubFailed4111221(arg1)
    print("OnSubFailed4111221")
end

function Quest41112:OnSubStart4111206(arg1)
    print("OnSubStart4111206")
    self:SpawnGadget(arg1, gadgets.Gadget70300118Data.id, 1)
end

function Quest41112:OnSubFinish4111206(arg1)
    print("OnSubFinish4111206")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3, nil, 41112)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
end

function Quest41112:OnSubFailed4111206(arg1)
    print("OnSubFailed4111206")
end

function Quest41112:OnSubStart4111227(arg1)
    print("OnSubStart4111227")
end

function Quest41112:OnSubFinish4111227(arg1)
    print("OnSubFinish4111227")
    self:ShowTutorialDialog(904)
end

function Quest41112:OnSubFailed4111227(arg1)
    print("OnSubFailed4111227")
end

function Quest41112:OnSubStart4111222(arg1)
    print("OnSubStart4111222")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger4_.alias, datas.Q41112Trigger4_.script, datas.Q41112Trigger4_.id, 0, datas.Q41112Trigger4_.point.pos, datas.Q41112Trigger4_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111222(arg1)
    print("OnSubFinish4111222")
end

function Quest41112:OnSubFailed4111222(arg1)
    print("OnSubFailed4111222")
end

function Quest41112:OnSubStart4111207(arg1)
    print("OnSubStart4111207")
    self:SpawnGadget(arg1, gadgets.Gadget70300118Data2.id, 1)
end

function Quest41112:OnSubFinish4111207(arg1)
    print("OnSubFinish4111207")
    self:UnSpawn(gadgets.Gadget70300118Data2.alias)
end

function Quest41112:OnSubFailed4111207(arg1)
    print("OnSubFailed4111207")
end

function Quest41112:OnSubStart4111225(arg1)
    print("OnSubStart4111225")
end

function Quest41112:OnSubFinish4111225(arg1)
    print("OnSubFinish4111225")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4, nil, 41112)
end

function Quest41112:OnSubFailed4111225(arg1)
    print("OnSubFailed4111225")
end

function Quest41112:OnSubStart4111211(arg1)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10011Data2.alias})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10011Data2.id, 0)
            arg1_2:RequestInteraction(npcs.Npc10011Data2.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41112:OnSubFinish4111211(arg1)
    print("OnSubFinish4111211")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111211(arg1)
    print("OnSubFailed4111211")
end

function Quest41112:OnSubStart4111212(arg1)
    print("OnSubStart4111212")
end

function Quest41112:OnSubFinish4111212(arg1)
    print("OnSubFinish4111212")
    self:ActionSafeCall(self.DestoryAllNPC)
end

function Quest41112:OnSubFailed4111212(arg1)
    print("OnSubFailed4111212")
end

function Quest41112:OnSubStart4111226(arg1)
    print("OnSubStart4111226")
    actorMgr:CreateActorWithPos(datas.Q41112Trigger8_.alias, datas.Q41112Trigger8_.script, datas.Q41112Trigger8_.id, 0, datas.Q41112Trigger8_.point.pos, datas.Q41112Trigger8_.point.rot, true, false, 3)
end

function Quest41112:OnSubFinish4111226(arg1)
    print("OnSubFinish4111226")
end

function Quest41112:OnSubFailed4111226(arg1)
    print("OnSubFailed4111226")
end

function Quest41112:OnSubStart4111213(arg1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10095Data.alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc10095Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest41112:OnSubFinish4111213(arg1)
    print("OnSubFinish4111213")
    self.ActionSafeCall(self, function()
        self:DestoryAllNPC()
        self:ShowActivityAsterPage()
    end)
end

function Quest41112:OnSubFailed4111213(arg1)
    print("OnSubFailed4111213")
end

return Quest41112
