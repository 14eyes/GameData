require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10200 = class("Quest10200", QuestActorProxy)
local NPCUtil = require("Actor/Npc/NPCUtil")

Quest10200.defaultAlias = "Quest10200"
local clientData
local subIDs
local qinData
local bruceData
local jackData
local joseData
local kleeData
local paimonData

function Quest10200:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    qinData = clientData.QinData
    bruceData = clientData.BruceData
    jackData = clientData.JackData
    joseData = clientData.JoseData
    kleeData = clientData.KleeData
    paimonData = clientData.PaimonData
end

function Quest10200:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1020001"] = self.OnSubStart1020001
    self.subStartHandlers["1020002"] = self.OnSubStart1020002
    self.subStartHandlers["1020003"] = self.OnSubStart1020003
    self.subStartHandlers["1020004"] = self.OnSubStart1020004
    self.subStartHandlers["1020005"] = self.OnSubStart1020005
    self.subStartHandlers["1020006"] = self.OnSubStart1020006
    self.subStartHandlers["1020007"] = self.OnSubStart1020007
    self.subStartHandlers["1020008"] = self.OnSubStart1020008
    self.subStartHandlers["1020009"] = self.OnSubStart1020009
    self.subStartHandlers["1020010"] = self.OnSubStart1020010
    self.subStartHandlers["1020011"] = self.OnSubStart1020011
    self.subStartHandlers["1020012"] = self.OnSubStart1020012
    self.subStartHandlers["1020013"] = self.OnSubStart1020013
    self.subStartHandlers["1020014"] = self.OnSubStart1020014
    self.subStartHandlers["1020015"] = self.OnSubStart1020015
    self.subStartHandlers["1020016"] = self.OnSubStart1020016
end

function Quest10200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1020001"] = self.OnSubFinish1020001
    self.subFinishHandlers["1020002"] = self.OnSubFinish1020002
    self.subFinishHandlers["1020003"] = self.OnSubFinish1020003
    self.subFinishHandlers["1020004"] = self.OnSubFinish1020004
    self.subFinishHandlers["1020005"] = self.OnSubFinish1020005
    self.subFinishHandlers["1020006"] = self.OnSubFinish1020006
    self.subFinishHandlers["1020007"] = self.OnSubFinish1020007
    self.subFinishHandlers["1020008"] = self.OnSubFinish1020008
    self.subFinishHandlers["1020009"] = self.OnSubFinish1020009
    self.subFinishHandlers["1020010"] = self.OnSubFinish1020010
    self.subFinishHandlers["1020011"] = self.OnSubFinish1020011
    self.subFinishHandlers["1020012"] = self.OnSubFinish1020012
    self.subFinishHandlers["1020013"] = self.OnSubFinish1020013
    self.subFinishHandlers["1020014"] = self.OnSubFinish1020014
    self.subFinishHandlers["1020015"] = self.OnSubFinish1020015
    self.subFinishHandlers["1020016"] = self.OnSubFinish1020016
end

function Quest10200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["1020001"] = self.OnSubFailed1020001
    self.subFailedHandlers["1020002"] = self.OnSubFailed1020002
    self.subFailedHandlers["1020003"] = self.OnSubFailed1020003
    self.subFailedHandlers["1020004"] = self.OnSubFailed1020004
    self.subFailedHandlers["1020005"] = self.OnSubFailed1020005
    self.subFailedHandlers["1020006"] = self.OnSubFailed1020006
    self.subFailedHandlers["1020007"] = self.OnSubFailed1020007
    self.subFailedHandlers["1020008"] = self.OnSubFailed1020008
    self.subFailedHandlers["1020009"] = self.OnSubFailed1020009
    self.subFailedHandlers["1020010"] = self.OnSubFailed1020010
    self.subFailedHandlers["1020011"] = self.OnSubFailed1020011
    self.subFailedHandlers["1020012"] = self.OnSubFailed1020012
    self.subFailedHandlers["1020013"] = self.OnSubFailed1020013
    self.subFailedHandlers["1020014"] = self.OnSubFailed1020014
    self.subFailedHandlers["1020015"] = self.OnSubFailed1020015
    self.subFailedHandlers["1020016"] = self.OnSubFailed1020016
end

function Quest10200:InvokeOnInteraction(arg1)
    print("10200 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowQuestPictureDialog(244)
    end

    if arg1 == 2 then
        print("Invoke 2")
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end
end

function Quest10200:OnSubStart1020002(arg1) end

function Quest10200:OnSubFinish1020002(arg1)
    print("1020002 finish")
end

function Quest10200:OnSubStart1020003(arg1) end

function Quest10200:OnSubStart1020015(arg1)
    self:NotifyTo("Npc1603", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", NPCUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, jackData.JackID, 1)
    self:CreateQuestNpc(arg1, bruceData.BruceID, 2)
    self:CreateQuestNpc(arg1, joseData.JoseID, 3)
    self:GetQuestNpcActor(bruceData.Bruce):SitOnChair(8010)
    self:GetQuestNpcActor(jackData.Jack):SitOnChair(8010)
    self:GetQuestNpcActor(joseData.Jose):DoFreeStyle(1190, true)
end

function Quest10200:OnSubFinish1020015(arg1) end

function Quest10200:OnSubFailed1020015(arg1)
    self:LightNotifyTo("Npc1603", 0, true)
    self:LightNotifyTo("Npc1413", 0, true)
    self:LightNotifyTo("Npc1523", 0, true)
    self:DestroyQuestNpcActor(jackData.Jack, 1009)
    self:DestroyQuestNpcActor(bruceData.Bruce, 1009)
    self:DestroyQuestNpcActor(joseData.Jose, 1009)
end

function Quest10200:OnSubFinish1020004(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubFinish1020011(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubFinish1020012(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubFinish1020013(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubStart1020014(arg1)
    self:NotifyTo("Npc1603", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1413", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest10200:OnSubStart1020016(arg1)
    self:GetQuestNpcActor(bruceData.Bruce):SitOnChair(8010)
    self:GetQuestNpcActor(jackData.Jack):SitOnChair(8010)
    self:GetQuestNpcActor(joseData.Jose):DoFreeStyle(1190, true)
end

function Quest10200:OnSubStart1020005(arg1)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 2, function()
        globalActor:EnablePlayerInput(true)
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({paimonData.Paimon})
        self:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, paimonData.PaimonID, 1)
            arg1_2:RequestInteraction(paimonData.Paimon)
        end, questNpcCreateTask)
    end)
end

function Quest10200:OnSubFinish1020005(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubFinish1020006(arg1)
    print("1020006 finish")
    self:CreateQuestNpc(arg1, qinData.QinID, 1)
    self:DestroyQuestNpcActor(bruceData.Bruce, 1009)
    self:DestroyQuestNpcActor(jackData.Jack, 1009)
    self:DestroyQuestNpcActor(joseData.Jose, 1009)
    self:NotifyTo("Npc1603", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1413", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1523", NPCUtil.NpcEventType.STARTDAILY, true)
end

function Quest10200:OnSubFinish1020007(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest10200:OnSubStart1020008(arg1)
    self:CallOnDoorOpen(function(arg1, arg2)
        local Q10200ClientConfig = require("Quest/Client/Q10200ClientConfig")
        local actor = actorMgr:GetActor(Q10200ClientConfig.ActorAlias)
        if arg1 == 1004 and arg2 == 3 and actor ~= nil then
            actor:FinishQuestID(false, 1020008)
        end
    end)
end

function Quest10200:OnSubFinish1020008(arg1)
    print("1020008 finish")
    self:UncallOnDoorOpen()
    local questNpcActor = self:GetQuestNpcActor(qinData.Qin)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest10200:OnSubStart1020009(arg1)
    self:PlayCutsceneIndex(1020001, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, kleeData.KleeID, 1)
        arg1_2:FinishQuestID(false, 1020009)
    end)
end

function Quest10200:OnSubFinish1020009(arg1)
    print("1020009 finish")
end

function Quest10200:OnSubStart1020010(arg1) end

function Quest10200:OnSubFinish1020010(arg1)
    print("1020010 finish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:DestroyQuestNpcActor(kleeData.Klee, 1004)
end

function Quest10200:Start() end
function Quest10200:OnDestroy() end
return Quest10200
