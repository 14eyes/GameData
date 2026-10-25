require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11041 = class("Quest11041", QuestActorProxy)
Quest11041.defaultAlias = "Quest11041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104101"] = self.OnSubStart1104101,
        ["1104102"] = self.OnSubStart1104102,
        ["1104107"] = self.OnSubStart1104107,
        ["1104108"] = self.OnSubStart1104108,
        ["1104109"] = self.OnSubStart1104109,
        ["1104103"] = self.OnSubStart1104103,
        ["1104104"] = self.OnSubStart1104104,
        ["1104105"] = self.OnSubStart1104105,
        ["1104106"] = self.OnSubStart1104106
    }
end

function Quest11041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104101"] = self.OnSubFinish1104101,
        ["1104102"] = self.OnSubFinish1104102,
        ["1104107"] = self.OnSubFinish1104107,
        ["1104108"] = self.OnSubFinish1104108,
        ["1104109"] = self.OnSubFinish1104109,
        ["1104103"] = self.OnSubFinish1104103,
        ["1104104"] = self.OnSubFinish1104104,
        ["1104105"] = self.OnSubFinish1104105,
        ["1104106"] = self.OnSubFinish1104106
    }
end

function Quest11041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104101"] = self.OnSubFailed1104101,
        ["1104102"] = self.OnSubFailed1104102,
        ["1104107"] = self.OnSubFailed1104107,
        ["1104108"] = self.OnSubFailed1104108,
        ["1104109"] = self.OnSubFailed1104109,
        ["1104103"] = self.OnSubFailed1104103,
        ["1104104"] = self.OnSubFailed1104104,
        ["1104105"] = self.OnSubFailed1104105,
        ["1104106"] = self.OnSubFailed1104106
    }
end

function Quest11041:Start()
    print("Start")
end

function Quest11041:OnDestroy()
    print("OnDestroy")
end

function Quest11041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11041:QiuqiuFreestyle1()
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10356Data.alias):DoFreeStyle(1)
    end)
end

function Quest11041:QiuqiuFreestyle2()
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10357Data.alias):DoFreeStyle(1)
    end)
end

function Quest11041:QiuqiuFreestyle3()
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10358Data.alias):DoFreeStyle(1)
    end)
end

function Quest11041:AfterTalk()
    print("AfterTalk")
    self:CreateQuestNpcById(1104106, npcs.Npc1018Data.id, 0)
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest11041:AfterFight()
    print("AfterFight")
    self:ShowBlackScreen(0.5, 1, 0.5, self.AfterTalk, nil, nil, "")
end

function Quest11041:OnSubStart1104101(arg1)
    print("OnSubStart1104101")
    actorMgr:CreateActorWithPos(datas.Q1104101Trigger_.alias, datas.Q1104101Trigger_.script, datas.Q1104101Trigger_.id, 0, datas.Q1104101Trigger_.point.pos, datas.Q1104101Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.FootPrint1_0.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_0.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint1_1.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_1.id, 2, 0)
    self:UnSpawn(gadgets.FootPrint1_2.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_2.id, 3, 0)
    self:UnSpawn(gadgets.FootPrint1_3.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_3.id, 4, 0)
    self:UnSpawn(gadgets.FootPrint0_0.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint0_0.id, 5, 0)
    self:UnSpawn(gadgets.FootPrint0_1.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint0_1.id, 6, 0)
    self:UnSpawn(gadgets.FootPrint1_2x.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_2x.id, 7, 0)
    self:UnSpawn(gadgets.FootPrint1_3x.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_3x.id, 8, 0)
end

function Quest11041:OnSubFinish1104101(arg1)
    print("OnSubFinish1104101")
    self:NarratorOnlyTaskByData(datas.NarratorFoot1, nil, 11041)
    self:UnSpawn(gadgets.FootPrint1_0.alias)
    self:UnSpawn(gadgets.FootPrint0_0.alias)
    self:UnSpawn(gadgets.FootPrint0_1.alias)
end

function Quest11041:OnSubFailed1104101(arg1)
    print("OnSubFailed1104101")
end

function Quest11041:OnSubStart1104102(arg1)
    print("OnSubStart1104102")
    actorMgr:CreateActorWithPos(datas.Q1104102Trigger_.alias, datas.Q1104102Trigger_.script, datas.Q1104102Trigger_.id, 0, datas.Q1104102Trigger_.point.pos, datas.Q1104102Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.FootPrint1_4.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint1_4.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint2_1.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_1.id, 2, 0)
    self:UnSpawn(gadgets.FootPrint2_2.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_2.id, 3, 0)
    self:UnSpawn(gadgets.FootPrint2_0.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_0.id, 4, 0)
    self:UnSpawn(gadgets.FootPrint2_2x.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_2x.id, 5, 0)
end

function Quest11041:OnSubFinish1104102(arg1)
    print("OnSubFinish1104102")
    self:NarratorOnlyTaskByData(datas.NarratorFoot2, nil, 11041)
    self:UnSpawn(gadgets.FootPrint1_1.alias)
    self:UnSpawn(gadgets.FootPrint1_2.alias)
    self:UnSpawn(gadgets.FootPrint1_2x.alias)
end

function Quest11041:OnSubFailed1104102(arg1)
    print("OnSubFailed1104102")
end

function Quest11041:OnSubStart1104107(arg1)
    print("OnSubStart1104107")
    actorMgr:CreateActorWithPos(datas.Q1104107Trigger_.alias, datas.Q1104107Trigger_.script, datas.Q1104107Trigger_.id, 0, datas.Q1104107Trigger_.point.pos, datas.Q1104107Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.FootPrint2_3.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_3.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint2_0.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_0.id, 4, 0)
    self:UnSpawn(gadgets.FootPrint2_3x.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_3x.id, 3, 0)
end

function Quest11041:OnSubFinish1104107(arg1)
    print("OnSubFinish1104107")
    self:UnSpawn(gadgets.FootPrint1_3.alias)
    self:UnSpawn(gadgets.FootPrint1_4.alias)
    self:UnSpawn(gadgets.FootPrint1_3x.alias)
end

function Quest11041:OnSubFailed1104107(arg1)
    print("OnSubFailed1104107")
end

function Quest11041:OnSubStart1104108(arg1)
    print("OnSubStart1104108")
    actorMgr:CreateActorWithPos(datas.Q1104108Trigger_.alias, datas.Q1104108Trigger_.script, datas.Q1104108Trigger_.id, 0, datas.Q1104108Trigger_.point.pos, datas.Q1104108Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.FootPrint2_4.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint2_4.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint3_1.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_1.id, 2, 0)
    self:UnSpawn(gadgets.FootPrint3_2.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_2.id, 3, 0)
end

function Quest11041:OnSubFinish1104108(arg1)
    print("OnSubFinish1104108")
    self:UnSpawn(gadgets.FootPrint2_1.alias)
    self:UnSpawn(gadgets.FootPrint2_2.alias)
    self:UnSpawn(gadgets.FootPrint2_3.alias)
    self:UnSpawn(gadgets.FootPrint2_0.alias)
    self:UnSpawn(gadgets.FootPrint2_2x.alias)
    self:UnSpawn(gadgets.FootPrint2_3x.alias)
end

function Quest11041:OnSubFailed1104108(arg1)
    print("OnSubFailed1104108")
end

function Quest11041:OnSubStart1104109(arg1)
    print("OnSubStart1104109")
    actorMgr:CreateActorWithPos(datas.Q1104109Trigger_.alias, datas.Q1104109Trigger_.script, datas.Q1104109Trigger_.id, 0, datas.Q1104109Trigger_.point.pos, datas.Q1104109Trigger_.point.rot, true, false, 3)
    self:UnSpawn(gadgets.FootPrint3_3.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_3.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint3_4.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_4.id, 2, 0)
end

function Quest11041:OnSubFinish1104109(arg1)
    print("OnSubFinish1104109")
    self:UnSpawn(gadgets.FootPrint2_4.alias)
    self:UnSpawn(gadgets.FootPrint3_1.alias)
    self:UnSpawn(gadgets.FootPrint3_2.alias)
end

function Quest11041:OnSubFailed1104109(arg1)
    print("OnSubFailed1104109")
end

function Quest11041:OnSubStart1104103(arg1)
    print("OnSubStart1104103")
    actorMgr:CreateActorWithPos(datas.Q1104103Trigger_.alias, datas.Q1104103Trigger_.script, datas.Q1104103Trigger_.id, 0, datas.Q1104103Trigger_.point.pos, datas.Q1104103Trigger_.point.rot, true, false, 3)
    self:QiuqiuFreestyle1()
    self:QiuqiuFreestyle2()
    self:QiuqiuFreestyle3()
    self:UnSpawn(gadgets.FootPrint3_5.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_5.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint3_6.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_6.id, 2, 0)
    self:UnSpawn(gadgets.FootPrint3_7.alias)
    self:DelaySpawnGadget(arg1, gadgets.FootPrint3_7.id, 3, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10356Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10357Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10358Data.id, 3)
end

function Quest11041:OnSubFinish1104103(arg1)
    print("OnSubFinish1104103")
end

function Quest11041:OnSubFailed1104103(arg1)
    print("OnSubFailed1104103")
end

function Quest11041:OnSubStart1104104(arg1)
    print("OnSubStart1104104")
    actorMgr:CreateActorWithPos(datas.Q1104104Trigger_.alias, datas.Q1104104Trigger_.script, datas.Q1104104Trigger_.id, 0, datas.Q1104104Trigger_.point.pos, datas.Q1104104Trigger_.point.rot, true, false, 3)
    self:QiuqiuFreestyle1()
    self:QiuqiuFreestyle2()
    self:QiuqiuFreestyle3()
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:UnSpawn(gadgets.AlbedoEasel.alias)
    self:DelaySpawnGadget(arg1, gadgets.AlbedoEasel.id, 1, 0)
    self:UnSpawn(gadgets.FootPrint3_3.alias)
    self:UnSpawn(gadgets.FootPrint3_4.alias)
    self:UnSpawn(gadgets.FootPrint3_5.alias)
    self:UnSpawn(gadgets.FootPrint3_6.alias)
    self:UnSpawn(gadgets.FootPrint3_7.alias)
end

function Quest11041:OnSubFinish1104104(arg1)
    print("OnSubFinish1104104")
    self:NarratorOnlyTaskByData(datas.NarratorQQ, nil, 11041)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10356Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10357Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10358Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:SafeDestroyQuestNpc("Npc1020", 3)
end

function Quest11041:OnSubFailed1104104(arg1)
    print("OnSubFailed1104104")
end

function Quest11041:OnSubStart1104105(arg1)
    print("OnSubStart1104105")
end

function Quest11041:OnSubFinish1104105(arg1)
    print("OnSubFinish1104105")
end

function Quest11041:OnSubFailed1104105(arg1)
    print("OnSubFailed1104105")
end

function Quest11041:OnSubStart1104106(arg1)
    print("OnSubStart1104106")
    self:CallDelay(2, self.AfterFight)
end

function Quest11041:OnSubFinish1104106(arg1)
    print("OnSubFinish1104106")
    self:UnSpawn(gadgets.AlbedoEasel.alias)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:SafeDestroyQuestNpc("Npc1020", 3)
end

function Quest11041:OnSubFailed1104106(arg1)
    print("OnSubFailed1104106")
end

return Quest11041
