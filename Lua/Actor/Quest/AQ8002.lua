require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8002 = class("Quest8002", QuestActorProxy)
Quest8002.defaultAlias = "Quest8002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800201"] = self.OnSubStart800201,
        ["800209"] = self.OnSubStart800209,
        ["800202"] = self.OnSubStart800202,
        ["800210"] = self.OnSubStart800210,
        ["800203"] = self.OnSubStart800203,
        ["800204"] = self.OnSubStart800204,
        ["800205"] = self.OnSubStart800205,
        ["800206"] = self.OnSubStart800206,
        ["800211"] = self.OnSubStart800211,
        ["800207"] = self.OnSubStart800207,
        ["800212"] = self.OnSubStart800212,
        ["800208"] = self.OnSubStart800208
    }
end

function Quest8002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800201"] = self.OnSubFinish800201,
        ["800209"] = self.OnSubFinish800209,
        ["800202"] = self.OnSubFinish800202,
        ["800210"] = self.OnSubFinish800210,
        ["800203"] = self.OnSubFinish800203,
        ["800204"] = self.OnSubFinish800204,
        ["800205"] = self.OnSubFinish800205,
        ["800206"] = self.OnSubFinish800206,
        ["800211"] = self.OnSubFinish800211,
        ["800207"] = self.OnSubFinish800207,
        ["800212"] = self.OnSubFinish800212,
        ["800208"] = self.OnSubFinish800208
    }
end

function Quest8002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["800201"] = self.OnSubFailed800201,
        ["800209"] = self.OnSubFailed800209,
        ["800202"] = self.OnSubFailed800202,
        ["800210"] = self.OnSubFailed800210,
        ["800203"] = self.OnSubFailed800203,
        ["800204"] = self.OnSubFailed800204,
        ["800205"] = self.OnSubFailed800205,
        ["800206"] = self.OnSubFailed800206,
        ["800211"] = self.OnSubFailed800211,
        ["800207"] = self.OnSubFailed800207,
        ["800212"] = self.OnSubFailed800212,
        ["800208"] = self.OnSubFailed800208
    }
end

function Quest8002:Start()
    print("Start")
end

function Quest8002:OnDestroy()
    print("OnDestroy")
end

function Quest8002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 800212)
    elseif arg1 == 2 then
    end
end

function Quest8002:OnSubStart800201(arg1)
    print("OnSubStart800201")
    actorMgr:CreateActorWithPos("Q8002ChurchTrigger", "Actor/Gadget/Q8002ChurchTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8002Church").pos, sceneData:GetDummyPoint(3, "Q8002Church").rot, true, false, 3)
end

function Quest8002:OnSubFinish800201(arg1)
    print("OnSubFinish800201")
end

function Quest8002:OnSubFailed800201(arg1)
    print("OnSubFailed800201")
end

function Quest8002:OnSubStart800202(arg1)
    print("OnSubStart800202")
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 1)
    self:GetQuestNpcActor(npcs.BarbaraData.alias):DoFreeStyle(4000, true, nil, true, true)
end

function Quest8002:OnSubFinish800202(arg1)
    print("OnSubFinish800202")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 1008)
end

function Quest8002:OnSubFailed800202(arg1)
    print("OnSubFailed800202")
end

function Quest8002:OnSubStart800203(arg1)
    print("OnSubStart800203")
    actorMgr:CreateActorWithPos("Q8002WolvendomTrigger", "Actor/Gadget/Q8002WolvendomTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8002Wolvendom").pos, sceneData:GetDummyPoint(3, "Q8002Wolvendom").rot, true, false, 3)
end

function Quest8002:OnSubFinish800203(arg1)
    print("OnSubFinish800203")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1)
end

function Quest8002:OnSubFailed800203(arg1)
    print("OnSubFailed800203")
end

function Quest8002:OnSubStart800204(arg1)
    print("OnSubStart800204")
end

function Quest8002:OnSubFinish800204(arg1)
    print("OnSubFinish800204")
end

function Quest8002:OnSubFailed800204(arg1)
    print("OnSubFailed800204")
end

function Quest8002:OnSubStart800205(arg1)
    print("OnSubStart800205")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.QinData.id, 1)
        arg1_2:RequestInteraction(npcs.QinData.alias)
    end, nil, nil, "")
end

function Quest8002:OnSubFinish800205(arg1)
    print("OnSubFinish800205")
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8002:OnSubFailed800205(arg1)
    print("OnSubFailed800205")
end

function Quest8002:OnSubStart800206(arg1)
    print("OnSubStart800206")
    self:CreateQuestNpc(arg1, npcs.WolfBossData.id, 1)
    self:CreateQuestNpc(arg1, npcs.RazorData.id, 2)
    self:GetQuestNpcActor(npcs.RazorData.alias):DoFreeStyle(1080, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10916Data.id, 3)
    actorMgr:CreateActorWithPos("Q8002Wolvendom2Trigger", "Actor/Gadget/Q8002Wolvendom2Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8002Wolvendom2").pos, sceneData:GetDummyPoint(3, "Q8002Wolvendom2").rot, true, false, 3)
end

function Quest8002:OnSubFinish800206(arg1)
    print("OnSubFinish800206")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3)
end

function Quest8002:OnSubFailed800206(arg1)
    print("OnSubFailed800206")
end

function Quest8002:OnSubStart800207(arg1)
    print("OnSubStart800207")
    self:GetQuestNpcActor(npcs.RazorData.alias):DoFreeStyle(1080, true, nil, true, true)
end

function Quest8002:OnSubFinish800207(arg1)
    print("OnSubFinish800207")
end

function Quest8002:OnSubFailed800207(arg1)
    print("OnSubFailed800207")
end

function Quest8002:OnSubStart800208(arg1)
    print("OnSubStart800208")
    self:GetQuestNpcActor(npcs.RazorData.alias):DoFreeStyle(1080, true, nil, true, true)
    self:ShowBlackScreen(0.5, 1, 0, function(arg1)
        arg1:RequestInteraction(npcs.WolfBossData.alias)
    end, nil, nil, "")
end

function Quest8002:OnSubFinish800208(arg1)
    print("OnSubFinish800208")
    self:SafeDestroyQuestNpc(npcs.WolfBossData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)
end

function Quest8002:OnSubFailed800208(arg1)
    print("OnSubFailed800208")
end

function Quest8002:OnSubStart800209(arg1)
    print("OnSubStart800209")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
    end, nil, nil, "")
end

function Quest8002:OnSubFinish800209(arg1)
    print("OnSubFinish800209")
end

function Quest8002:OnSubFailed800209(arg1)
    print("OnSubFailed800209")
end

function Quest8002:OnSubStart800210(arg1)
    print("OnSubStart800210")
end

function Quest8002:OnSubFinish800210(arg1)
    print("OnSubFinish800210")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8002:OnSubFailed800210(arg1)
    print("OnSubFailed800210")
end

function Quest8002:OnSubStart800211(arg1)
    print("OnSubStart800211")
    self:GetQuestNpcActor(npcs.RazorData.alias):DoFreeStyle(1080, true, nil, true, true)
    actorMgr:CreateActorWithPos("Q8002Wolvendom3Trigger", "Actor/Gadget/Q8002Wolvendom3Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8002WolvendomTalk").pos, sceneData:GetDummyPoint(3, "Q8002WolvendomTalk").rot, true, false)
end

function Quest8002:OnSubFinish800211(arg1)
    print("OnSubFinish800211")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 3)
end

function Quest8002:OnSubFailed800211(arg1)
    print("OnSubFailed800211")
end

function Quest8002:OnSubStart800212(arg1)
    print("OnSubStart800212")
end

function Quest8002:OnSubFinish800212(arg1)
    print("OnSubFinish800212")
end

function Quest8002:OnSubFailed800212(arg1)
    print("OnSubFailed800212")
end

return Quest8002
