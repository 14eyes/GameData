require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest356 = class("Quest356", QuestActorProxy)
Quest356.defaultAlias = "Quest356"
local NPCUtil = require("Actor/Npc/NPCUtil")

function Quest356:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35601"] = self.OnSubStart35601
    self.subStartHandlers["35602"] = self.OnSubStart35602
    self.subStartHandlers["35603"] = self.OnSubStart35603
    self.subStartHandlers["35604"] = self.OnSubStart35604
    self.subStartHandlers["35605"] = self.OnSubStart35605
    self.subStartHandlers["35606"] = self.OnSubStart35606
end

function Quest356:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35601"] = self.OnSubFinish35601
    self.subFinishHandlers["35602"] = self.OnSubFinish35602
    self.subFinishHandlers["35603"] = self.OnSubFinish35603
    self.subFinishHandlers["35604"] = self.OnSubFinish35604
    self.subFinishHandlers["35605"] = self.OnSubFinish35605
    self.subFinishHandlers["35606"] = self.OnSubFinish35606
end

function Quest356:OnSubStart35601(arg1)
    print("35601 Start : ......")
    globalActor:PlayAudioState("StateGroup_musicEmotion", "State_musicNormal")
    globalActor:StopLocalAvatar()
    globalActor:FinishAllNarrator()
    self:PlayCutsceneIndex(36001, self.On35601CutsceneFinish)
end

function Quest356:On35601CutsceneFinish()
    local amborData = self.clientData.AmborData
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpcById(35601, paimonData.PaimonID)
    self:CreateQuestNpcById(35601, amborData.AmborID)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:Standby()
    end

    self:RequestInteraction(self.clientData.AmborData.Ambor)
end

function Quest356:OnSubStart35603(arg1) end
function Quest356:OnSubStart35604(arg1) end

function Quest356:OnSubStart35605(arg1)
    print("35605 Start : ...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2.TransmitPlayerById(arg1_2, arg1, 1, function()
            globalActor:StartGuide("GuideAvatarFly")
            globalActor:StartGuide("GuideAvatarFlyPC")
            globalActor:StartGuide("GuideAvatarFlyWarningInfo")
        end, function()
            local questNpcActor = arg1_2:GetQuestNpcActor(arg1_2.clientData.PaimonData.Paimon)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end

            local actor = actorMgr:GetActor(arg1_2.clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuest(false, nil)
            end

            globalActor:ChangeToHero()
        end)
    end)
end

function Quest356:OnSubStart35606(arg1)
    print("35606 Start : ...")
    local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
    for i = 1, #mengdeNpcListSpecial do
        self:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.STARTDAILY, true)
    end

    self:CreateQuestNpc(arg1, self.clientData.AmborData.AmborID)
end

function Quest356:OnSubFinish35601(arg1)
    print("35601 Finish : ...")
    self:CancelCurrentNavigation()
    self:ActionSafeCall(function(arg1)
        globalActor:StartGuide("GuideQuestGuide")
        local questNpcActor = arg1:GetQuestNpcActor(arg1.clientData.AmborData.Ambor)
        local v = arg1:GetQuestNpcActor(arg1.clientData.PaimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest356:OnSubFinish35602(arg1)
    print("35602 Finish : Play Cutscene")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(arg1.clientData.NarratorData.Story1.dialogList, nil, "Story")
    end)
end

function Quest356:OnSubFinish35603(arg1)
    print("35603 Finish : ...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({self.clientData.AmborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg1_2.clientData.AmborData.AmborID)
        arg1_2:CallDelay(0.5, function(arg1)
            arg1:RequestInteraction("Ambor")
        end)
    end, nil, entityCreateTask)
end

function Quest356:OnSubFinish35604(arg1)
    print("35604 Finish : ...")
end

function Quest356:OnSubFinish35605(arg1)
    print("35605 Finish : ...")
end

function Quest356:OnSubFinish35606(arg1)
    print("35606 Finish : ...")
end

function Quest356:Start() end
function Quest356:OnDestroy() end
return Quest356
