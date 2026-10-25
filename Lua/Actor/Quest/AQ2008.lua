require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2008 = class("Quest2008", QuestActorProxy)
Quest2008.defaultAlias = "Quest2008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest2008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest2008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200807"] = self.OnSubStart200807,
        ["200805"] = self.OnSubStart200805,
        ["200806"] = self.OnSubStart200806,
        ["200801"] = self.OnSubStart200801,
        ["200802"] = self.OnSubStart200802,
        ["200803"] = self.OnSubStart200803,
        ["200804"] = self.OnSubStart200804,
        ["200808"] = self.OnSubStart200808
    }
end

function Quest2008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200807"] = self.OnSubFinish200807,
        ["200805"] = self.OnSubFinish200805,
        ["200806"] = self.OnSubFinish200806,
        ["200801"] = self.OnSubFinish200801,
        ["200802"] = self.OnSubFinish200802,
        ["200803"] = self.OnSubFinish200803,
        ["200804"] = self.OnSubFinish200804,
        ["200808"] = self.OnSubFinish200808
    }
end

function Quest2008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200807"] = self.OnSubFailed200807,
        ["200805"] = self.OnSubFailed200805,
        ["200806"] = self.OnSubFailed200806,
        ["200801"] = self.OnSubFailed200801,
        ["200802"] = self.OnSubFailed200802,
        ["200803"] = self.OnSubFailed200803,
        ["200804"] = self.OnSubFailed200804,
        ["200808"] = self.OnSubFailed200808
    }
end

function Quest2008:Start()
    print("Start")
end

function Quest2008:OnDestroy()
    print("OnDestroy")
end

function Quest2008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2008:OnSubStart200807(arg1)
    print("OnSubStart200807")
end

function Quest2008:OnSubFinish200807(arg1)
    print("OnSubFinish200807")
end

function Quest2008:OnSubFailed200807(arg1)
    print("OnSubFailed200807")
end

function Quest2008:OnSubStart200805(arg1)
    print("OnSubStart200805")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest2008:OnSubFinish200805(arg1)
    print("OnSubFinish200805")
end

function Quest2008:OnSubFailed200805(arg1)
    print("OnSubFailed200805")
end

function Quest2008:OnSubStart200806(arg1)
    print("OnSubStart200806")
    actorMgr:CreateActorWithPos(datas.Q200806Trigger_.alias, datas.Q200806Trigger_.script, datas.Q200806Trigger_.id, 0, datas.Q200806Trigger_.point.pos, datas.Q200806Trigger_.point.rot, true, false, 1060)
end

function Quest2008:OnSubFinish200806(arg1)
    print("OnSubFinish200806")
end

function Quest2008:OnSubFailed200806(arg1)
    print("OnSubFailed200806")
end

function Quest2008:OnSubStart200801(arg1)
    print("OnSubStart200801")
    self:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12008Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12009Data.id, 4)
    self:UnSpawn(gadgets.Gadget70710476Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710476Data.id, 1, 0)
    actorMgr:CreateActorWithPos(datas.Q200801Trigger_.alias, datas.Q200801Trigger_.script, datas.Q200801Trigger_.id, 0, datas.Q200801Trigger_.point.pos, datas.Q200801Trigger_.point.rot, true, false, 3)
end

function Quest2008:OnSubFinish200801(arg1)
    print("OnSubFinish200801")
    self:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12008Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12009Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710476Data.alias)
end

function Quest2008:OnSubFailed200801(arg1)
    print("OnSubFailed200801")
end

function Quest2008:OnSubStart200802(arg1)
    print("OnSubStart200802")
    globalActor:PlayerEnterDungeon(289, 1118)
end

function Quest2008:OnSubFinish200802(arg1)
    print("OnSubFinish200802")
end

function Quest2008:OnSubFailed200802(arg1)
    print("OnSubFailed200802")
end

function Quest2008:OnSubStart200803(arg1)
    print("OnSubStart200803")
end

function Quest2008:OnSubFinish200803(arg1)
    print("OnSubFinish200803")
end

function Quest2008:OnSubFailed200803(arg1)
    print("OnSubFailed200803")
end

function Quest2008:OnSubStart200804(arg1)
    print("OnSubStart200804")
    self:ShowBlackScreen(0.5, 4, 0, function(arg1_2)
        arg1_2:TransmitPlayerByQuestId(200804, 1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
            arg1_2:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest2008:OnSubFinish200804(arg1)
    print("OnSubFinish200804")
end

function Quest2008:OnSubFailed200804(arg1)
    print("OnSubFailed200804")
end

function Quest2008:OnSubStart200808(arg1)
    print("OnSubStart200808")
    self:ShowBlackScreen(0, 2.5, 0, function(arg1)
        arg1:TransmitPlayerByQuestId(200808, 2)
        actorMgr:CreateActorWithPos(datas.Q2008Trigger_.alias, datas.Q2008Trigger_.script, datas.Q2008Trigger_.id, 0, datas.Q2008Trigger_.point.pos, datas.Q2008Trigger_.point.rot, true, false, 3)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest2008:OnSubFinish200808(arg1)
    print("OnSubFinish200808")
end

function Quest2008:OnSubFailed200808(arg1)
    print("OnSubFailed200808")
end

return Quest2008
