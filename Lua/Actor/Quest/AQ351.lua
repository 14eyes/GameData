require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest351 = class("Quest351", QuestActorProxy)
Quest351.defaultAlias = "Quest351"
Quest351.warningTask = nil
Quest351.stayWarningTask = nil

function Quest351:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35100"] = self.OnSubStart35100
    self.subStartHandlers["35101"] = self.OnSubStart35101
    self.subStartHandlers["35102"] = self.OnSubStart35102
    self.subStartHandlers["35103"] = self.OnSubStart35103
    self.subStartHandlers["35104"] = self.OnSubStart35104
    self.subStartHandlers["35105"] = self.OnSubStart35105
    self.subStartHandlers["35106"] = self.OnSubStart35106
    self.subStartHandlers["35107"] = self.OnSubStart35107
end

function Quest351:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35100"] = self.OnSubFinish35100
    self.subFinishHandlers["35101"] = self.OnSubFinish35101
    self.subFinishHandlers["35102"] = self.OnSubFinish35102
    self.subFinishHandlers["35103"] = self.OnSubFinish35103
    self.subFinishHandlers["35104"] = self.OnSubFinish35104
    self.subFinishHandlers["35105"] = self.OnSubFinish35105
    self.subFinishHandlers["35106"] = self.OnSubFinish35106
    self.subFinishHandlers["35107"] = self.OnSubFinish35107
end

function Quest351:PaimonVanish()
    local questNpcActor = self.GetQuestNpcActor(self, self.clientData.PaimonData.Paimon)
    questNpcActor:ClearFollowTask()
    questNpcActor:Standby()
    questNpcActor:VanishKeep(function(arg1)
        self.uActor:AvatarPaimonAppear()
        arg1:HideSelf()
    end)
end

function Quest351:OnSubStart35104(arg1)
    print("35104 Start : Play mp4 and Cs_Opening_CutScene1")
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
    self:PlayAwakeCutscene()
    globalActor:EndGuide("GuideCameraMove")
    globalActor:EndGuide("GuideCameraScale")
    globalActor:EndGuide("GuideAvatarMove")
    globalActor:EndGuide("GuideAvatarSprint")
    globalActor:EndGuide("GuideAvatarJump")
    globalActor:EndGuide("GuideCameraMovePC")
    globalActor:EndGuide("GuideCameraScalePC")
    globalActor:EndGuide("GuideAvatarMovePC")
    globalActor:EndGuide("GuideAvatarSprintPC")
    globalActor:EndGuide("GuideAvatarJumpPC")
    globalActor:EndGuide("GuideCameraMovePS")
    globalActor:EndGuide("GuideAvatarMovePS")
    globalActor:EndGuide("GuideAvatarSprintPS")
    globalActor:EndGuide("GuideAvatarJumpPS")
end

function Quest351:PlayAwakeCutscene()
    self:PlayCutsceneIndex(35102, self.On35104CutsceneFinish, nil, nil, true)
end

function Quest351:StartAllTutorial()
    globalActor:StartGuide("GuideCameraMove")
end

function Quest351:On35104CutsceneFinish()
    self:GetQuestNpcActor(self.clientData.PaimonData.Paimon):PlayDefault()
    print("35104 Finish : Tutorial1")
    self:StartAllTutorial()
    local actor = actorMgr:GetActor(self.clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest351:OnSubStart35101(arg1)
    print("35101 Start : To Trans")
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    questNpcActor:Standby()
    questNpcActor:RunToRouteTask(self.clientData.RoutePoints2, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:ClearPriorityInter(InterTimingType.BTN)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q351Trans").rot))
    end)
end

function Quest351:OnSubStart35106(arg1)
    print("StartGuideInteraction")
    globalActor:StartGuide("GuideInteraction")
end

function Quest351:OnSubFinish35106(arg1)
    print("35105 Finish : To Climb")
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    questNpcActor:Standby()
    questNpcActor:RunToRouteTask(self.clientData.RoutePoints, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:ClearPriorityInter(InterTimingType.BTN)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q351FirstClimb").rot))
    end)

    self:CallDelay(2, self.AfterAni)
end

function Quest351:AfterAni()
    self:ShowTutorialDialog(232, self.TotorialContent)
end

function Quest351:TotorialContent(arg1)
    globalActor:CallDelay(3, function()
        globalActor:StartGuide("GuideRadar")
    end)
end

function Quest351:OnSubFinish35107(arg1)
    print("35103 Finish : Tutorial1")
    globalActor:StartGuide("GuideAvatarAttack")
end

function Quest351:OnSubFinish35101(arg1) end
function Quest351:OnSubStart35103(arg1) end
function Quest351:OnSubFinish35103(arg1) end

function Quest351:OnSubStart35102(arg1)
    print("35102 Start : Paimon NPC to Shimo")
    self:CallDelay(1, self.PaimonVanish)
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1, nil, "Story")
end

function Quest351:OnSubFinish35102(arg1)
    print("35102 Finish : Warning Off")
    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end

    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end
end

function Quest351:Start() end
function Quest351:OnDestroy() end
return Quest351
