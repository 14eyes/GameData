require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20103 = class("Quest20103", QuestActorProxy)
Quest20103.defaultAlias = "Quest20103"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest20103:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest20103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2010301"] = self.OnSubStart2010301,
        ["2010302"] = self.OnSubStart2010302,
        ["2010303"] = self.OnSubStart2010303,
        ["2010304"] = self.OnSubStart2010304,
        ["2010305"] = self.OnSubStart2010305,
        ["2010306"] = self.OnSubStart2010306,
        ["2010307"] = self.OnSubStart2010307,
        ["2010308"] = self.OnSubStart2010308,
        ["2010309"] = self.OnSubStart2010309,
        ["2010310"] = self.OnSubStart2010310,
        ["2010311"] = self.OnSubStart2010311,
        ["2010312"] = self.OnSubStart2010312,
        ["2010313"] = self.OnSubStart2010313,
        ["2010314"] = self.OnSubStart2010314,
        ["2010315"] = self.OnSubStart2010315
    }
end

function Quest20103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2010301"] = self.OnSubFinish2010301,
        ["2010302"] = self.OnSubFinish2010302,
        ["2010303"] = self.OnSubFinish2010303,
        ["2010304"] = self.OnSubFinish2010304,
        ["2010305"] = self.OnSubFinish2010305,
        ["2010306"] = self.OnSubFinish2010306,
        ["2010307"] = self.OnSubFinish2010307,
        ["2010308"] = self.OnSubFinish2010308,
        ["2010309"] = self.OnSubFinish2010309,
        ["2010310"] = self.OnSubFinish2010310,
        ["2010311"] = self.OnSubFinish2010311,
        ["2010312"] = self.OnSubFinish2010312,
        ["2010313"] = self.OnSubFinish2010313,
        ["2010314"] = self.OnSubFinish2010314,
        ["2010315"] = self.OnSubFinish2010315
    }
end

function Quest20103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2010301"] = self.OnSubFailed2010301,
        ["2010302"] = self.OnSubFailed2010302,
        ["2010303"] = self.OnSubFailed2010303,
        ["2010304"] = self.OnSubFailed2010304,
        ["2010305"] = self.OnSubFailed2010305,
        ["2010306"] = self.OnSubFailed2010306,
        ["2010307"] = self.OnSubFailed2010307,
        ["2010308"] = self.OnSubFailed2010308,
        ["2010309"] = self.OnSubFailed2010309,
        ["2010310"] = self.OnSubFailed2010310,
        ["2010311"] = self.OnSubFailed2010311,
        ["2010312"] = self.OnSubFailed2010312,
        ["2010313"] = self.OnSubFailed2010313,
        ["2010314"] = self.OnSubFailed2010314,
        ["2010315"] = self.OnSubFailed2010315
    }
end

function Quest20103:Start()
    print("Start")
end

function Quest20103:OnDestroy()
    print("OnDestroy")
end

function Quest20103:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Npc20102Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20103Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1565Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20025Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest20103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc20102Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20103Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1565Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20025Data.alias, 3)
end

function Quest20103:TransmitPlayer()
    print("TransmitPlayer")
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q20103PlayerBorn").pos, sceneData:GetDummyPoint(3, "Q20103PlayerBorn").rot)
end

function Quest20103:DestroyHili()
    print("DestroyHili")
    self:DestroyQuestNpcActor(npcs.Npc20025Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20102Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc20103Data.alias, 3)
end

function Quest20103:Blackscreen()
    print("Blackscreen")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q20103")
end

function Quest20103:DestroyPaimon()
    print("DestroyPaimon")
    actorMgr:DestroyEntityActor(npcs.PaimonData.alias, 3, false)
end

function Quest20103:InteractPaimon()
    print("InteractPaimon")
    self:RequestInteraction("Paimon")
end

function Quest20103:DestroyElla()
    print("DestroyElla")
    self:DestroyQuestNpcActor(npcs.Npc1565Data.alias, 3)
end

function Quest20103:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:CreateQuestNpcById(2010303, npcs.PaimonData.id)
    elseif arg1 == 2 then
    end
end

function Quest20103:OnSubStart2010301(arg1)
    print("OnSubStart2010301")
    self:CreateQuestNpc(arg1, npcs.Npc1565Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20025Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20102Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20103Data.id, 4)
end

function Quest20103:OnSubFinish2010301(arg1)
    print("OnSubFinish2010301")
end

function Quest20103:OnSubFailed2010301(arg1)
    print("OnSubFailed2010301")
end

function Quest20103:OnSubStart2010302(arg1)
    print("OnSubStart2010302")
end

function Quest20103:OnSubFinish2010302(arg1)
    print("OnSubFinish2010302")
    self:NarratorOnlyTask(datas.PaimonReminder)
end

function Quest20103:OnSubFailed2010302(arg1)
    print("OnSubFailed2010302")
end

function Quest20103:OnSubStart2010303(arg1)
    print("OnSubStart2010303")
end

function Quest20103:OnSubFinish2010303(arg1)
    print("OnSubFinish2010303")
end

function Quest20103:OnSubFailed2010303(arg1)
    print("OnSubFailed2010303")
end

function Quest20103:OnSubStart2010304(arg1)
    print("OnSubStart2010304")
end

function Quest20103:OnSubFinish2010304(arg1)
    print("OnSubFinish2010304")
    self:GetQuestNpcActor(npcs.Npc20025Data.alias):DoFreeStyle(1, true)
end

function Quest20103:OnSubFailed2010304(arg1)
    print("OnSubFailed2010304")
end

function Quest20103:OnSubStart2010305(arg1)
    print("OnSubStart2010305")
end

function Quest20103:OnSubFinish2010305(arg1)
    print("OnSubFinish2010305")
    self:GetQuestNpcActor(npcs.Npc20102Data.alias):DoFreeStyle(1, true)
end

function Quest20103:OnSubFailed2010305(arg1)
    print("OnSubFailed2010305")
end

function Quest20103:OnSubStart2010306(arg1)
    print("OnSubStart2010306")
end

function Quest20103:OnSubFinish2010306(arg1)
    print("OnSubFinish2010306")
    self:GetQuestNpcActor(npcs.Npc20103Data.alias):DoFreeStyle(1, true)
end

function Quest20103:OnSubFailed2010306(arg1)
    print("OnSubFailed2010306")
end

function Quest20103:OnSubStart2010307(arg1)
    print("OnSubStart2010307")
end

function Quest20103:OnSubFinish2010307(arg1)
    print("OnSubFinish2010307")
    self:GetQuestNpcActor(npcs.Npc20025Data.alias):DoFreeStyle(2, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20103Data.alias)
    questNpcActor:DoFreeStyle(3, true)
    questNpcActor:DoFreeStyle(3, true)
end

function Quest20103:OnSubFailed2010307(arg1)
    print("OnSubFailed2010307")
end

function Quest20103:OnSubStart2010308(arg1)
    print("OnSubStart2010308")
end

function Quest20103:OnSubFinish2010308(arg1)
    print("OnSubFinish2010308")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20103Data.alias)
    questNpcActor:DoFreeStyle(3, false)
    questNpcActor:DoFreeStyle(2, true)
    questNpcActor:DoFreeStyle(2, true)
end

function Quest20103:OnSubFailed2010308(arg1)
    print("OnSubFailed2010308")
end

function Quest20103:OnSubStart2010309(arg1)
    print("OnSubStart2010309")
end

function Quest20103:OnSubFinish2010309(arg1)
    print("OnSubFinish2010309")
end

function Quest20103:OnSubFailed2010309(arg1)
    print("OnSubFailed2010309")
end

function Quest20103:OnSubStart2010310(arg1)
    print("OnSubStart2010310")
end

function Quest20103:OnSubFinish2010310(arg1)
    print("OnSubFinish2010310")
end

function Quest20103:OnSubFailed2010310(arg1)
    print("OnSubFailed2010310")
end

function Quest20103:OnSubStart2010311(arg1)
    print("OnSubStart2010311")
end

function Quest20103:OnSubFinish2010311(arg1)
    print("OnSubFinish2010311")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc20025Data.alias):DoFreeStyle(1)
    self:GetQuestNpcActor(npcs.Npc20102Data.alias):DoFreeStyle(1)
    self:GetQuestNpcActor(npcs.Npc20103Data.alias):DoFreeStyle(1)
end

function Quest20103:OnSubFailed2010311(arg1)
    print("OnSubFailed2010311")
end

function Quest20103:OnSubStart2010312(arg1)
    print("OnSubStart2010312")
end

function Quest20103:OnSubFinish2010312(arg1)
    print("OnSubFinish2010312")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q20103MonsterBorn").pos, 0, 2, true, true)
    self:ActionSafeCall(self.DestroyHili)
end

function Quest20103:OnSubFailed2010312(arg1)
    print("OnSubFailed2010312")
end

function Quest20103:OnSubStart2010313(arg1)
    print("OnSubStart2010313")
end

function Quest20103:OnSubFinish2010313(arg1)
    print("OnSubFinish2010313")
end

function Quest20103:OnSubFailed2010313(arg1)
    print("OnSubFailed2010313")
end

function Quest20103:OnSubStart2010314(arg1)
    print("OnSubStart2010314")
end

function Quest20103:OnSubFinish2010314(arg1)
    print("OnSubFinish2010314")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyElla)
end

function Quest20103:OnSubFailed2010314(arg1)
    print("OnSubFailed2010314")
end

function Quest20103:OnSubStart2010315(arg1)
    print("OnSubStart2010315")
end

function Quest20103:OnSubFinish2010315(arg1)
    print("OnSubFinish2010315")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyElla)
end

function Quest20103:OnSubFailed2010315(arg1)
    print("OnSubFailed2010315")
end

return Quest20103
