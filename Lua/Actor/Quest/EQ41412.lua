require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41412 = class("Quest41412", QuestActorProxy)
Quest41412.defaultAlias = "Quest41412"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41412:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41412:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4141201"] = self.OnSubStart4141201,
        ["4141202"] = self.OnSubStart4141202,
        ["4141203"] = self.OnSubStart4141203,
        ["4141204"] = self.OnSubStart4141204,
        ["4141205"] = self.OnSubStart4141205,
        ["4141206"] = self.OnSubStart4141206,
        ["4141207"] = self.OnSubStart4141207,
        ["4141208"] = self.OnSubStart4141208,
        ["4141209"] = self.OnSubStart4141209,
        ["4141210"] = self.OnSubStart4141210,
        ["4141211"] = self.OnSubStart4141211,
        ["4141212"] = self.OnSubStart4141212,
        ["4141213"] = self.OnSubStart4141213,
        ["4141214"] = self.OnSubStart4141214,
        ["4141216"] = self.OnSubStart4141216
    }
end

function Quest41412:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4141201"] = self.OnSubFinish4141201,
        ["4141202"] = self.OnSubFinish4141202,
        ["4141203"] = self.OnSubFinish4141203,
        ["4141204"] = self.OnSubFinish4141204,
        ["4141205"] = self.OnSubFinish4141205,
        ["4141206"] = self.OnSubFinish4141206,
        ["4141207"] = self.OnSubFinish4141207,
        ["4141208"] = self.OnSubFinish4141208,
        ["4141209"] = self.OnSubFinish4141209,
        ["4141210"] = self.OnSubFinish4141210,
        ["4141211"] = self.OnSubFinish4141211,
        ["4141212"] = self.OnSubFinish4141212,
        ["4141213"] = self.OnSubFinish4141213,
        ["4141214"] = self.OnSubFinish4141214,
        ["4141216"] = self.OnSubFinish4141216
    }
end

function Quest41412:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4141201"] = self.OnSubFailed4141201,
        ["4141202"] = self.OnSubFailed4141202,
        ["4141203"] = self.OnSubFailed4141203,
        ["4141204"] = self.OnSubFailed4141204,
        ["4141205"] = self.OnSubFailed4141205,
        ["4141206"] = self.OnSubFailed4141206,
        ["4141207"] = self.OnSubFailed4141207,
        ["4141208"] = self.OnSubFailed4141208,
        ["4141209"] = self.OnSubFailed4141209,
        ["4141210"] = self.OnSubFailed4141210,
        ["4141211"] = self.OnSubFailed4141211,
        ["4141212"] = self.OnSubFailed4141212,
        ["4141213"] = self.OnSubFailed4141213,
        ["4141214"] = self.OnSubFailed4141214,
        ["4141216"] = self.OnSubFailed4141216
    }
end

function Quest41412:Start()
    print("Start")
end

function Quest41412:OnDestroy()
    print("OnDestroy")
end

function Quest41412:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41412:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41412:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:UnSpawn(gadgets.Gadget71700201Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
    self:PaimonDis()
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1009)
    self:NotifyTo("Npc1669", 0, true)
    self:NotifyTo("Npc1465", 0, true)
    self:NotifyTo("Npc1431", 0, true)
    self:NotifyTo("Npc1463", 0, true)
    actorMgr:DestroyEntityActor(datas.Q4141206Trigger_.alias, 1008, false)
    actorMgr:DestroyEntityActor(datas.Q4141209Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141210Trigger_.alias, 3, false)
end

function Quest41412:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.paimonData.alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest41412:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        self:UnSpawn(gadgets.Gadget71700201Data.alias)
        self:CallDelay(0.5, function(arg1)
            print("SpawnGadgetById")
            arg1:SpawnGadgetById(4141205, gadgets.Gadget71700201Data.id, 1)
        end)
    end

    if arg1 == 2 then
        print("param == 2")
        self:UnSpawn(gadgets.Gadget71700201Data.alias)
        self:CallDelay(0.5, function(arg1)
            print("SpawnGadgetById")
            arg1:SpawnGadgetById(4141204, gadgets.Gadget71700201Data.id, 1)
        end)
    end

    if arg1 == 3 then
        print("param == 3")
        self:UnSpawn(gadgets.Gadget71700201Data.alias)
    end
end

function Quest41412:OnSubStart4141201(arg1)
    print("OnSubStart4141201")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 2)
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1463", 1, true)
end

function Quest41412:OnSubFinish4141201(arg1)
    print("OnSubFinish4141201")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1431", 0, true)
    self:NotifyTo("Npc1463", 0, true)
end

function Quest41412:OnSubFailed4141201(arg1)
    print("OnSubFailed4141201")
end

function Quest41412:OnSubStart4141202(arg1)
    print("OnSubStart4141202")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:NotifyTo("Npc1669", 1, true)
end

function Quest41412:OnSubFinish4141202(arg1)
    print("OnSubFinish4141202")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41412:OnSubFailed4141202(arg1)
    print("OnSubFailed4141202")
end

function Quest41412:OnSubStart4141203(arg1)
    print("OnSubStart4141203")
    self:NotifyTo("Npc1669", 1, true)
end

function Quest41412:OnSubFinish4141203(arg1)
    print("OnSubFinish4141203")
end

function Quest41412:OnSubFailed4141203(arg1)
    print("OnSubFailed4141203")
end

function Quest41412:OnSubStart4141204(arg1)
    print("OnSubStart4141204")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:NotifyTo("Npc1669", 1, true)
end

function Quest41412:OnSubFinish4141204(arg1)
    print("OnSubFinish4141204")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1669", 0, true)
    self:UnSpawn(gadgets.Gadget71700201Data.alias)
end

function Quest41412:OnSubFailed4141204(arg1)
    print("OnSubFailed4141204")
end

function Quest41412:OnSubStart4141205(arg1)
    print("OnSubStart4141205")
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1463", 1, true)
end

function Quest41412:OnSubFinish4141205(arg1)
    print("OnSubFinish4141205")
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    self:UnSpawn(gadgets.Gadget71700201Data.alias)
    self:NotifyTo("Npc1431", 0, true)
    self:NotifyTo("Npc1463", 0, true)
end

function Quest41412:OnSubFailed4141205(arg1)
    print("OnSubFailed4141205")
end

function Quest41412:OnSubStart4141206(arg1)
    print("OnSubStart4141206")
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q4141206Trigger_.alias, datas.Q4141206Trigger_.script, datas.Q4141206Trigger_.id, 0, datas.Q4141206Trigger_.point.pos, datas.Q4141206Trigger_.point.rot, true, false, 1008)
end

function Quest41412:OnSubFinish4141206(arg1)
    print("OnSubFinish4141206")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1008)
    self:PaimonDis()
end

function Quest41412:OnSubFailed4141206(arg1)
    print("OnSubFailed4141206")
end

function Quest41412:OnSubStart4141207(arg1)
    print("OnSubStart4141207")
    actorMgr:CreateActorWithPos(datas.Q4141209Trigger_.alias, datas.Q4141209Trigger_.script, datas.Q4141209Trigger_.id, 0, datas.Q4141209Trigger_.point.pos, datas.Q4141209Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.RazorData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1028Data.id, 2)
end

function Quest41412:OnSubFinish4141207(arg1)
    print("OnSubFinish4141207")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest41412:OnSubFailed4141207(arg1)
    print("OnSubFailed4141207")
end

function Quest41412:OnSubStart4141209(arg1)
    print("OnSubStart4141209")
end

function Quest41412:OnSubFinish4141209(arg1)
    print("OnSubFinish4141209")
end

function Quest41412:OnSubFailed4141209(arg1)
    print("OnSubFailed4141209")
end

function Quest41412:OnSubStart4141208(arg1)
    print("OnSubStart4141208")
    actorMgr:CreateActorWithPos(datas.Q4141210Trigger_.alias, datas.Q4141210Trigger_.script, datas.Q4141210Trigger_.id, 0, datas.Q4141210Trigger_.point.pos, datas.Q4141210Trigger_.point.rot, true, false, 3)
end

function Quest41412:OnSubFinish4141208(arg1)
    print("OnSubFinish4141208")
end

function Quest41412:OnSubFailed4141208(arg1)
    print("OnSubFailed4141208")
end

function Quest41412:OnSubStart4141214(arg1)
    print("OnSubStart4141214")
    self:RequestInteraction(npcs.Npc1028Data.alias)
end

function Quest41412:OnSubFinish4141214(arg1)
    print("OnSubFinish4141214")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41412:OnSubFailed4141214(arg1)
    print("OnSubFailed4141214")
end

function Quest41412:OnSubStart4141210(arg1)
    print("OnSubStart4141210")
end

function Quest41412:OnSubFinish4141210(arg1)
    print("OnSubFinish4141210")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4141207Bennett").pos, 0, 2, true)
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Npc1028Data.alias)
    end)
end

function Quest41412:OnSubFailed4141210(arg1)
    print("OnSubFailed4141210")
end

function Quest41412:OnSubStart4141211(arg1)
    print("OnSubStart4141211")
end

function Quest41412:OnSubFinish4141211(arg1)
    print("OnSubFinish4141211")
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41412:OnSubFailed4141211(arg1)
    print("OnSubFailed4141211")
end

function Quest41412:OnSubStart4141212(arg1)
    print("OnSubStart4141212")
end

function Quest41412:OnSubFinish4141212(arg1)
    print("OnSubFinish4141212")
end

function Quest41412:OnSubFailed4141212(arg1)
    print("OnSubFailed4141212")
end

function Quest41412:OnSubStart4141213(arg1)
    print("OnSubStart4141213")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.DilucData.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1020Data.alias):SitOnChair()
    self:NotifyTo("Npc1465", 1, true)
    self:RequestInteraction(npcs.GaiaData.alias)
end

function Quest41412:OnSubFinish4141213(arg1)
    print("OnSubFinish4141213")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41412:OnSubFailed4141213(arg1)
    print("OnSubFailed4141213")
end

function Quest41412:OnSubStart4141216(arg1)
    print("OnSubStart4141216")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.DilucData.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.GaiaData.alias)
    self:GetQuestNpcActor(npcs.Npc1020Data.alias):SitOnChair()
    self:NotifyTo("Npc1465", 1, true)
end

function Quest41412:OnSubFinish4141216(arg1)
    print("OnSubFinish4141216")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1009)
    self:NotifyTo("Npc1465", 0, true)
end

function Quest41412:OnSubFailed4141216(arg1)
    print("OnSubFailed4141216")
end

return Quest41412
