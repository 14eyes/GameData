require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest384 = class("Quest384", QuestActorProxy)
Quest384.defaultAlias = "Quest384"
local clientData
local subIDs
local wendyData
local dilucData
local qinData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest384:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
end

function Quest384:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38401"] = self.OnSubStart38401
    self.subStartHandlers["38402"] = self.OnSubStart38402
    self.subStartHandlers["38403"] = self.OnSubStart38403
    self.subStartHandlers["38404"] = self.OnSubStart38404
    self.subStartHandlers["38405"] = self.OnSubStart38405
    self.subStartHandlers["38406"] = self.OnSubStart38406
end

function Quest384:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38401"] = self.OnSubFinish38401
    self.subFinishHandlers["38402"] = self.OnSubFinish38402
    self.subFinishHandlers["38403"] = self.OnSubFinish38403
    self.subFinishHandlers["38404"] = self.OnSubFinish38404
    self.subFinishHandlers["38405"] = self.OnSubFinish38405
    self.subFinishHandlers["38406"] = self.OnSubFinish38406
end

function Quest384:OnSubStart38401(arg1)
    print("38401 start ")
end

function Quest384:OnSubStart38402(arg1)
    print("38402 start ")
    self:NotifyTo("Npc1609", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1639", DailyNPCManager.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q384TriggerSP", "Actor/Gadget/Q384TriggerSP", 70900002, 0, sceneData:GetDummyPoint(3, "Q384Trigger").pos, sceneData:GetDummyPoint(3, "Q384Trigger").rot, true, false)
end

function Quest384:OnSubStart38403(arg1)
    print("38403 start:...")
    self:NotifyTo("Npc1609", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1639", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest384:OnSubStart38404(arg1)
    print("38404 start:...")
    self:NotifyTo("Npc1609", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1639", DailyNPCManager.NpcEventType.HIDESELF, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
        print("CS finish")
    end
end

function Quest384:Play384Cutscene(arg1)
    self:PlayCutsceneIndex(38401, self.FinishCS)
end

function Quest384:Play384Cutscene02(arg1)
    self:PlayCutsceneIndex(38402, self.FinishCS)
end

function Quest384:OnSubStart38405(arg1)
    print("38405 start:...")
    self:InteractionWendy()
    self:NotifyTo("Npc1609", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1639", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest384:OnSubStart38406(arg1)
    print("38406 start:...")
    self:NotifyTo("Npc1609", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1639", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(self.Play384Cutscene02)
end

function Quest384:OnSubFinish38401(arg1)
    print("OnFinished 38401")
end

function Quest384:OnSubFinish38402(arg1)
    print("OnFinished 38402")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        arg1:CreateQuestNpcById(38402, wendyData.WendyID)
        arg1:CreateQuestNpcById(38402, dilucData.DilucID)
        arg1:CreateQuestNpcById(38402, qinData.QinID)
        arg1:RequestInteraction(wendyData.Wendy)
    end, nil, questNpcCreateTask)

    local actor = actorMgr:GetActor("Q384TriggerSP")
    if actor ~= nil then
        actor:Destroy(false)
    end
end

function Quest384:OnSubFinish38403(arg1)
    print("OnFinished 38403")
end

function Quest384:OnSubFinish38404(arg1)
    print("OnFinished 38404")
end

function Quest384:OnSubFinish38405(arg1)
    print("OnFinished 38405")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("AbyssWater")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest384:OnSubFinish38406(arg1)
    print("OnFinished 38406")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(dilucData.Diluc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest384:Interaction()
    self:RequestInteraction(dilucData.Diluc)
    print("Before CS Talk")
end

function Quest384:InteractionWendy()
    self:RequestInteraction(wendyData.Wendy)
    print("After CS Talk")
end

function Quest384:Trans() end

function Quest384:FinishCS()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
        print("CS finish")
    end
end

function Quest384:DeleteNPC()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(qinData.Qin)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(dilucData.Diluc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest384:BeginNarrator()
    self:NarratorOnlyTaskLegacy(clientData.FightNarrator, nil, "Story")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q384WizardMark").pos, 3.5, 3, true)
end

function Quest384:InvokeOnInteraction(arg1)
    if arg1 == 4 then
        print("Now Wizard Leave")
        self:PlayBSEffect()
        self:CallDelay(0.5, self.PlayEffect)
        self:CallDelay(2, self.PlayASEffect)
        self:CallDelay(2.1, self.AbyssHide)
    end
end

function Quest384:PlayBSEffect() end
function Quest384:PlayEffect() end
function Quest384:PlayASEffect() end

function Quest384:AbyssHide()
    local questNpcActor = self:GetQuestNpcActor("AbyssWater")
    if questNpcActor ~= nil then
        questNpcActor:SetVisible(false)
    end
end

function Quest384:Start() end
function Quest384:OnDestroy() end
return Quest384
