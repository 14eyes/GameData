require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest306 = class("Quest306", QuestActorProxy)
Quest306.defaultAlias = "Quest306"
local Q306ClientConfig = require("Quest/Client/Q306ClientConfig")
local Q359ClientConfig = require("Quest/Client/Q359ClientConfig")

local amborData = Q306ClientConfig.AmborData

function Quest306:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["30600"] = self.OnSubStart30600
    self.subStartHandlers["30601"] = self.OnSubStart30601
    self.subStartHandlers["30602"] = self.OnSubStart30602
    self.subStartHandlers["30603"] = self.OnSubStart30603
    self.subStartHandlers["30604"] = self.OnSubStart30604
    self.subStartHandlers["30607"] = self.OnSubStart30607
    self.subStartHandlers["30608"] = self.OnSubStart30608
    self.subStartHandlers["30609"] = self.OnSubStart30609
    self.subStartHandlers["30610"] = self.OnSubStart30610
    self.subStartHandlers["30611"] = self.OnSubStart30611
    self.subStartHandlers["30612"] = self.OnSubStart30612
end

function Quest306:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["30600"] = self.OnSubFinish30600
    self.subFinishHandlers["30601"] = self.OnSubFinish30601
    self.subFinishHandlers["30602"] = self.OnSubFinish30602
    self.subFinishHandlers["30603"] = self.OnSubFinish30603
    self.subFinishHandlers["30604"] = self.OnSubFinish30604
    self.subFinishHandlers["30607"] = self.OnSubFinish30607
    self.subFinishHandlers["30608"] = self.OnSubFinish30608
    self.subFinishHandlers["30609"] = self.OnSubFinish30609
    self.subFinishHandlers["30610"] = self.OnSubFinish30610
    self.subFinishHandlers["30611"] = self.OnSubFinish30611
    self.subFinishHandlers["30612"] = self.OnSubFinish30612
end

function Quest306:ShowTutorial1(arg1)
    self:ShowTutorialDialog(103)
end

function Quest306:ShowTutorial2(arg1)
    self:ShowTutorialDialog(104)
end

function Quest306:ShowTutorial3(arg1)
    self:ShowTutorialDialog(105)
end

function Quest306:OnSubFinish30600(arg1)
    self:CreateQuestNpc(arg1, amborData.AmborID, 0)
end

function Quest306:OnSubFinish30601(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest306:OnSubStart30602(arg1)
    print("30601 Start : Creat Ambor & Environment")
    local questNpcActor = self.GetQuestNpcActor(self, amborData.Ambor)
    questNpcActor.RunToTask(questNpcActor, self.clientData.AmborData.DoorPos, function(arg1, arg2)
        actorUtils.ClearCacheCmdExternal(arg1.alias, ActorCommandType.MOVE)
        arg1:ClearFollowTask()
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(self.clientData.AmborData.DoorDir))
    end, function()
        questNpcActor:Standby()
    end)
end

function Quest306:OnSubStart30610(arg1)
    print("30610 Start : talk to NPC")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID, 0)
        arg1_2:CallDelay(0.5, function(arg1)
            arg1:RequestInteraction(amborData.Ambor)
        end)
    end, nil, questNpcCreateTask)
end

function Quest306:OnSubFinish30607(arg1)
    print("30607 Finish: Tutorial 1")
    self:ShowTutorialDialog(103)
end

function Quest306:OnSubFinish30608(arg1)
    print("30607 Finish: Tutorial 2")
    self:ShowTutorialDialog(104, function()
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
    end)
end

function Quest306:OnSubFinish30609(arg1)
    print("30607 Finish: Tutorial 3")
    self:ShowTutorialDialog(105)
end

function Quest306:OnSubFinish30610(arg1)
    print("30610 Finish: Destroy Ambor")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        local v = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest306:OnSubFinish30612(arg1)
    print("30612 Finish: FlyGuide")
    globalActor:StartGuide("GuideAvatarFlyInWind")
end

function Quest306:Start() end
function Quest306:OnDestroy() end
return Quest306
