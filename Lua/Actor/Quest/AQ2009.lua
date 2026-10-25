require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2009 = class("Quest2009", QuestActorProxy)
Quest2009.defaultAlias = "Quest2009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest2009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200901"] = self.OnSubStart200901,
        ["200910"] = self.OnSubStart200910,
        ["200909"] = self.OnSubStart200909,
        ["200921"] = self.OnSubStart200921,
        ["200922"] = self.OnSubStart200922,
        ["200902"] = self.OnSubStart200902,
        ["200903"] = self.OnSubStart200903,
        ["200914"] = self.OnSubStart200914,
        ["200915"] = self.OnSubStart200915,
        ["200916"] = self.OnSubStart200916,
        ["200920"] = self.OnSubStart200920,
        ["200917"] = self.OnSubStart200917,
        ["200924"] = self.OnSubStart200924,
        ["200918"] = self.OnSubStart200918,
        ["200923"] = self.OnSubStart200923,
        ["200919"] = self.OnSubStart200919,
        ["200911"] = self.OnSubStart200911,
        ["200913"] = self.OnSubStart200913,
        ["200912"] = self.OnSubStart200912,
        ["200925"] = self.OnSubStart200925,
        ["200904"] = self.OnSubStart200904,
        ["200926"] = self.OnSubStart200926,
        ["200905"] = self.OnSubStart200905,
        ["200906"] = self.OnSubStart200906,
        ["200907"] = self.OnSubStart200907,
        ["200927"] = self.OnSubStart200927,
        ["200928"] = self.OnSubStart200928,
        ["200929"] = self.OnSubStart200929,
        ["200930"] = self.OnSubStart200930,
        ["200931"] = self.OnSubStart200931,
        ["200908"] = self.OnSubStart200908
    }
end

function Quest2009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200901"] = self.OnSubFinish200901,
        ["200910"] = self.OnSubFinish200910,
        ["200909"] = self.OnSubFinish200909,
        ["200921"] = self.OnSubFinish200921,
        ["200922"] = self.OnSubFinish200922,
        ["200902"] = self.OnSubFinish200902,
        ["200903"] = self.OnSubFinish200903,
        ["200914"] = self.OnSubFinish200914,
        ["200915"] = self.OnSubFinish200915,
        ["200916"] = self.OnSubFinish200916,
        ["200920"] = self.OnSubFinish200920,
        ["200917"] = self.OnSubFinish200917,
        ["200924"] = self.OnSubFinish200924,
        ["200918"] = self.OnSubFinish200918,
        ["200923"] = self.OnSubFinish200923,
        ["200919"] = self.OnSubFinish200919,
        ["200911"] = self.OnSubFinish200911,
        ["200913"] = self.OnSubFinish200913,
        ["200912"] = self.OnSubFinish200912,
        ["200925"] = self.OnSubFinish200925,
        ["200904"] = self.OnSubFinish200904,
        ["200926"] = self.OnSubFinish200926,
        ["200905"] = self.OnSubFinish200905,
        ["200906"] = self.OnSubFinish200906,
        ["200907"] = self.OnSubFinish200907,
        ["200927"] = self.OnSubFinish200927,
        ["200928"] = self.OnSubFinish200928,
        ["200929"] = self.OnSubFinish200929,
        ["200930"] = self.OnSubFinish200930,
        ["200931"] = self.OnSubFinish200931,
        ["200908"] = self.OnSubFinish200908
    }
end

function Quest2009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200901"] = self.OnSubFailed200901,
        ["200910"] = self.OnSubFailed200910,
        ["200909"] = self.OnSubFailed200909,
        ["200921"] = self.OnSubFailed200921,
        ["200922"] = self.OnSubFailed200922,
        ["200902"] = self.OnSubFailed200902,
        ["200903"] = self.OnSubFailed200903,
        ["200914"] = self.OnSubFailed200914,
        ["200915"] = self.OnSubFailed200915,
        ["200916"] = self.OnSubFailed200916,
        ["200920"] = self.OnSubFailed200920,
        ["200917"] = self.OnSubFailed200917,
        ["200924"] = self.OnSubFailed200924,
        ["200918"] = self.OnSubFailed200918,
        ["200923"] = self.OnSubFailed200923,
        ["200919"] = self.OnSubFailed200919,
        ["200911"] = self.OnSubFailed200911,
        ["200913"] = self.OnSubFailed200913,
        ["200912"] = self.OnSubFailed200912,
        ["200925"] = self.OnSubFailed200925,
        ["200904"] = self.OnSubFailed200904,
        ["200926"] = self.OnSubFailed200926,
        ["200905"] = self.OnSubFailed200905,
        ["200906"] = self.OnSubFailed200906,
        ["200907"] = self.OnSubFailed200907,
        ["200927"] = self.OnSubFailed200927,
        ["200928"] = self.OnSubFailed200928,
        ["200929"] = self.OnSubFailed200929,
        ["200930"] = self.OnSubFailed200930,
        ["200931"] = self.OnSubFailed200931,
        ["200908"] = self.OnSubFailed200908
    }
end

function Quest2009:Start()
    print("Start")
end

function Quest2009:OnDestroy()
    print("OnDestroy")
end

function Quest2009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2009:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Invoke 2")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            print("***************get quest success")
            actor:FinishQuest(false, nil)
        end
    end

    if arg1 == 2 then
        print("Invoke 2")
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            print("***************get quest success")
            actorUtils.FinishQuestID(false, 200931)
        end
    end
end

function Quest2009:OnSubStart200901(arg1)
    print("OnSubStart200901")
    self:ShowBlackScreen(0, 2, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
        arg1_2:RequestInteraction(npcs.PaimonData.alias)
        arg1_2:NotifyTo(npcs.Npc3012Data.alias, 1, true)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest2009:OnSubFinish200901(arg1)
    print("OnSubFinish200901")
end

function Quest2009:OnSubFailed200901(arg1)
    print("OnSubFailed200901")
end

function Quest2009:OnSubStart200910(arg1)
    print("OnSubStart200910")
    self:CreateQuestNpc(arg1, npcs.Npc12049Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12050Data.id, 2)
end

function Quest2009:OnSubFinish200910(arg1)
    print("OnSubFinish200910")
    self:SafeDestroyQuestNpc(npcs.Npc12049Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12050Data.alias, 3)
end

function Quest2009:OnSubFailed200910(arg1)
    print("OnSubFailed200910")
end

function Quest2009:OnSubStart200909(arg1)
    print("OnSubStart200909")
    self:CreateQuestNpc(arg1, npcs.Npc12047Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12048Data.id, 2)
end

function Quest2009:OnSubFinish200909(arg1)
    print("OnSubFinish200909")
    self:SafeDestroyQuestNpc(npcs.Npc12047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12048Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3012Data.alias, 0, true)
end

function Quest2009:OnSubFailed200909(arg1)
    print("OnSubFailed200909")
end

function Quest2009:OnSubStart200921(arg1)
    print("OnSubStart200921")
    self:CreateQuestNpc(arg1, npcs.Npc311501Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc311501Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos(datas.Q200921Trigger_.alias, datas.Q200921Trigger_.script, datas.Q200921Trigger_.id, 0, datas.Q200921Trigger_.point.pos, datas.Q200921Trigger_.point.rot, true, false, 3)
end

function Quest2009:OnSubFinish200921(arg1)
    print("OnSubFinish200921")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest2009:OnSubFailed200921(arg1)
    print("OnSubFailed200921")
end

function Quest2009:OnSubStart200922(arg1)
    print("OnSubStart200922")
    self:GetQuestNpcActor(npcs.Npc311501Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest2009:OnSubFinish200922(arg1)
    print("OnSubFinish200922")
end

function Quest2009:OnSubFailed200922(arg1)
    print("OnSubFailed200922")
end

function Quest2009:OnSubStart200902(arg1)
    print("OnSubStart200902")
    self:GetQuestNpcActor(npcs.Npc311501Data.alias):DoFreeStyle(9030, true, nil, true, true, false)
end

function Quest2009:OnSubFinish200902(arg1)
    print("OnSubFinish200902")
    self:SafeDestroyQuestNpc(npcs.Npc311501Data.alias, 3)
end

function Quest2009:OnSubFailed200902(arg1)
    print("OnSubFailed200902")
end

function Quest2009:OnSubStart200903(arg1)
    print("OnSubStart200903")
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 1)
    self:NotifyTo(npcs.Npc3114Data.alias, 1, true)
end

function Quest2009:OnSubFinish200903(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
end

function Quest2009:OnSubFailed200903(arg1)
    print("OnSubFailed200903")
end

function Quest2009:OnSubStart200914(arg1)
    print("OnSubStart200914")
    self:CreateQuestNpc(arg1, npcs.Npc12055Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12056Data.id, 2)
end

function Quest2009:OnSubFinish200914(arg1)
    print("OnSubFinish200914")
    self:LightNotifyTo(npcs.Npc3114Data.alias, 0, true)
end

function Quest2009:OnSubFailed200914(arg1)
    print("OnSubFailed200914")
end

function Quest2009:OnSubStart200915(arg1)
    print("OnSubStart200915")
    self:CreateQuestNpc(arg1, npcs.Npc311501Data.id, 1)
end

function Quest2009:OnSubFinish200915(arg1)
    print("OnSubFinish200915")
end

function Quest2009:OnSubFailed200915(arg1)
    print("OnSubFailed200915")
end

function Quest2009:OnSubStart200916(arg1)
    print("OnSubStart200916")
end

function Quest2009:OnSubFinish200916(arg1)
    print("OnSubFinish200916")
end

function Quest2009:OnSubFailed200916(arg1)
    print("OnSubFailed200916")
end

function Quest2009:OnSubStart200920(arg1)
    print("OnSubStart200920")
end

function Quest2009:OnSubFinish200920(arg1)
    print("OnSubFinish200920")
    self:SafeDestroyQuestNpc(npcs.Npc311501Data.alias, 3)
end

function Quest2009:OnSubFailed200920(arg1)
    print("OnSubFailed200920")
end

function Quest2009:OnSubStart200917(arg1)
    print("OnSubStart200917")
    self:CreateQuestNpc(arg1, npcs.Npc12013Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc311601Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q200917Trigger_.alias, datas.Q200917Trigger_.script, datas.Q200917Trigger_.id, 0, datas.Q200917Trigger_.point.pos, datas.Q200917Trigger_.point.rot, true, false, 3)
end

function Quest2009:OnSubFinish200917(arg1)
    print("OnSubFinish200917")
    self:SafeDestroyQuestNpc(npcs.Npc12013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc311601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12055Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12056Data.alias, 3)
end

function Quest2009:OnSubFailed200917(arg1)
    print("OnSubFailed200917")
end

function Quest2009:OnSubStart200924(arg1)
    print("OnSubStart200924")
    self:CreateQuestNpc(arg1, npcs.Npc311501Data.id, 1)
end

function Quest2009:OnSubFinish200924(arg1)
    print("OnSubFinish200924")
    self:SafeDestroyQuestNpc(npcs.Npc311501Data.alias, 3)
end

function Quest2009:OnSubFailed200924(arg1)
    print("OnSubFailed200924")
end

function Quest2009:OnSubStart200918(arg1)
    print("OnSubStart200918")
    actorMgr:CreateActorWithPos(datas.Q200918failTrigger_.alias, datas.Q200918failTrigger_.script, datas.Q200918failTrigger_.id, 0, datas.Q200918failTrigger_.point.pos, datas.Q200918failTrigger_.point.rot, true, false, 3)
    self:TransmitPlayerByQuestId(200918, 4, function(arg1)
        arg1:ShowTutorialDialog(2009)
    end)

    self:UnSpawn(gadgets.Gadget70350220Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70350220Data.id, 5, 0)
end

function Quest2009:OnSubFinish200918(arg1)
    print("OnSubFinish200918")
    self:UnSpawn(gadgets.Gadget70710291Data.alias)
    self:UnSpawn(gadgets.Gadget70710291Data1.alias)
    self:UnSpawn(gadgets.Gadget70710291Data2.alias)
    self:UnSpawn(gadgets.Gadget70710291Data3.alias)
    self:UnSpawn(gadgets.Gadget70350220Data.alias)
end

function Quest2009:OnSubFailed200918(arg1)
    print("OnSubFailed200918")
    self:UnSpawn(gadgets.Gadget70710291Data.alias)
    self:UnSpawn(gadgets.Gadget70710291Data1.alias)
    self:UnSpawn(gadgets.Gadget70710291Data2.alias)
    self:UnSpawn(gadgets.Gadget70710291Data3.alias)
    self:UnSpawn(gadgets.Gadget70350220Data.alias)
end

function Quest2009:OnSubStart200923(arg1)
    print("OnSubStart200923")
    self:CreateQuestNpc(arg1, npcs.Npc311501Data.id, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:TransmitPlayerByQuestId(subIDs.q200923, 3)
    end)
end

function Quest2009:OnSubFinish200923(arg1)
    print("OnSubFinish200923")
end

function Quest2009:OnSubFailed200923(arg1)
    print("OnSubFailed200923")
end

function Quest2009:OnSubStart200919(arg1)
    print("OnSubStart200919")
    self:CreateQuestNpc(arg1, npcs.Npc12013Data.id, 1)
    self:TransmitPlayerByQuestId(subIDs.q200919, 2)
    self:RequestInteraction(npcs.Npc12013Data.alias)
end

function Quest2009:OnSubFinish200919(arg1)
    print("OnSubFinish200919")
    self:SafeDestroyQuestNpc(npcs.Npc12013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc311601Data.alias, 3)
end

function Quest2009:OnSubFailed200919(arg1)
    print("OnSubFailed200919")
end

function Quest2009:OnSubStart200911(arg1)
    print("OnSubStart200911")
end

function Quest2009:OnSubFinish200911(arg1)
    print("OnSubFinish200911")
end

function Quest2009:OnSubFailed200911(arg1)
    print("OnSubFailed200911")
end

function Quest2009:OnSubStart200913(arg1)
    print("OnSubStart200913")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:TransmitPlayerByQuestId(200913, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest2009:OnSubFinish200913(arg1)
    print("OnSubFinish200913")
end

function Quest2009:OnSubFailed200913(arg1)
    print("OnSubFailed200913")
end

function Quest2009:OnSubStart200912(arg1)
    print("OnSubStart200912")
    self:UnSpawn(gadgets.Gadget70710087Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710087Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70300118Data1.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70300118Data1.id, 2, 0)
end

function Quest2009:OnSubFinish200912(arg1)
    print("OnSubFinish200912")
    self:UnSpawn(gadgets.Gadget70710087Data.alias)
    self:UnSpawn(gadgets.Gadget70300118Data1.alias)
end

function Quest2009:OnSubFailed200912(arg1)
    print("OnSubFailed200912")
end

function Quest2009:OnSubStart200925(arg1)
    print("OnSubStart200925")
    self:UnSpawn(gadgets.Gadget70710086Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710086Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70300118Data.id, 2, 0)
end

function Quest2009:OnSubFinish200925(arg1)
    print("OnSubFinish200925")
    self:UnSpawn(gadgets.Gadget70710086Data.alias)
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
end

function Quest2009:OnSubFailed200925(arg1)
    print("OnSubFailed200925")
end

function Quest2009:OnSubStart200904(arg1)
    print("OnSubStart200904")
    self:CreateQuestNpc(arg1, npcs.Npc12058Data.id, 1)
end

function Quest2009:OnSubFinish200904(arg1)
    print("OnSubFinish200904")
    self:SafeDestroyQuestNpc(npcs.Npc12058Data.alias, 3)
end

function Quest2009:OnSubFailed200904(arg1)
    print("OnSubFailed200904")
end

function Quest2009:OnSubStart200926(arg1)
    print("OnSubStart200926")
end

function Quest2009:OnSubFinish200926(arg1)
    print("OnSubFinish200926")
end

function Quest2009:OnSubFailed200926(arg1)
    print("OnSubFailed200926")
end

function Quest2009:OnSubStart200905(arg1)
    print("OnSubStart200905")
    actorMgr:CreateActorWithPos(datas.Q200905Trigger_.alias, datas.Q200905Trigger_.script, datas.Q200905Trigger_.id, 0, datas.Q200905Trigger_.point.pos, datas.Q200905Trigger_.point.rot, true, false, 3)
end

function Quest2009:OnSubFinish200905(arg1)
    print("OnSubFinish200905")
end

function Quest2009:OnSubFailed200905(arg1)
    print("OnSubFailed200905")
end

function Quest2009:OnSubStart200906(arg1)
    print("OnSubStart200906")
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12238Data.id, 7)
end

function Quest2009:OnSubFinish200906(arg1)
    print("OnSubFinish200906")
    self:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12014Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12017Data.alias, 3)
end

function Quest2009:OnSubFailed200906(arg1)
    print("OnSubFailed200906")
end

function Quest2009:OnSubStart200907(arg1)
    print("OnSubStart200907")
    self:TransmitPlayerByQuestId(200907, 8)
end

function Quest2009:OnSubFinish200907(arg1)
    print("OnSubFinish200907")
end

function Quest2009:OnSubFailed200907(arg1)
    print("OnSubFailed200907")
end

function Quest2009:OnSubStart200927(arg1)
    print("OnSubStart200927")
    self:TransmitPlayerByQuestId(200927, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12128Data.id, 1)
    self:RequestInteraction(npcs.Npc12128Data.alias)
end

function Quest2009:OnSubFinish200927(arg1)
    print("OnSubFinish200927")
    self:SafeDestroyQuestNpc(npcs.Npc12128Data.alias, 3)
end

function Quest2009:OnSubFailed200927(arg1)
    print("OnSubFailed200927")
end

function Quest2009:OnSubStart200928(arg1)
    print("OnSubStart200928")
end

function Quest2009:OnSubFinish200928(arg1)
    print("OnSubFinish200928")
end

function Quest2009:OnSubFailed200928(arg1)
    print("OnSubFailed200928")
end

function Quest2009:OnSubStart200929(arg1)
    print("OnSubStart200929")
    self:TransmitPlayerByQuestId(200929, 7)
    self:CreateQuestNpc(arg1, npcs.Npc12129Data.id, 1)
    self:RequestInteraction(npcs.Npc12129Data.alias)
end

function Quest2009:OnSubFinish200929(arg1)
    print("OnSubFinish200929")
    self:SafeDestroyQuestNpc(npcs.Npc12129Data.alias, 3)
end

function Quest2009:OnSubFailed200929(arg1)
    print("OnSubFailed200929")
end

function Quest2009:OnSubStart200930(arg1)
    print("OnSubStart200930")
end

function Quest2009:OnSubFinish200930(arg1)
    print("OnSubFinish200930")
end

function Quest2009:OnSubFailed200930(arg1)
    print("OnSubFailed200930")
end

function Quest2009:OnSubStart200931(arg1)
    print("OnSubStart200931")
end

function Quest2009:OnSubFinish200931(arg1)
    print("OnSubFinish200931")
end

function Quest2009:OnSubFailed200931(arg1)
    print("OnSubFailed200931")
end

function Quest2009:OnSubStart200908(arg1)
    print("OnSubStart200908")
    self:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 2)
    self:TransmitPlayerByQuestId(200908, 1)
    self:CreateQuestNpcById(200908, npcs.PaimonData.id, 0)
    self:RequestInteraction(npcs.Npc1037Data.alias)
end

function Quest2009:OnSubFinish200908(arg1)
    print("OnSubFinish200908")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
end

function Quest2009:OnSubFailed200908(arg1)
    print("OnSubFailed200908")
end

return Quest2009
