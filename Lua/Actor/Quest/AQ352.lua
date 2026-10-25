require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest352 = class("Quest352", QuestActorProxy)
Quest352.defaultAlias = "Quest352"

function Quest352:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35200"] = self.OnSubStart35200
    self.subStartHandlers["35201"] = self.OnSubStart35201
    self.subStartHandlers["35202"] = self.OnSubStart35202
    self.subStartHandlers["35203"] = self.OnSubStart35203
    self.subStartHandlers["35204"] = self.OnSubStart35204
    self.subStartHandlers["35205"] = self.OnSubStart35205
end

function Quest352:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35200"] = self.OnSubFinish35200
    self.subFinishHandlers["35201"] = self.OnSubFinish35201
    self.subFinishHandlers["35202"] = self.OnSubFinish35202
    self.subFinishHandlers["35203"] = self.OnSubFinish35203
    self.subFinishHandlers["35204"] = self.OnSubFinish35204
    self.subFinishHandlers["35205"] = self.OnSubFinish35205
end

function Quest352:PaimonCreat()
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpcById(35200, paimonData.PaimonID)
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1, nil, "Tag")
end

function Quest352:On35201CutsceneFinish()
    self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

local actor
local pos

function Quest352:ShowGoddess()
    if actor ~= nil then
        actor:SetPos(pos)
        actor = nil
    end
end

function Quest352:HideGoddess()
    actor = actorMgr:GetActor("Goddess_3003")
    if actor ~= nil then
        if actor ~= actorMgr.dummyActor then
            goto lbl_20
        end
    end

    actor = nil
    print("can not find Goddess_3003")
    goto lbl_34
    ::lbl_20::
    pos = actor:GetPos()
    actor:SetPos(M.Pos(pos.x, pos.y + 100, pos.z))
    ::lbl_34::
end

function Quest352:On35204CutsceneDestroy()
    print("On35204CutsceneDestroy")
    self:ShowGoddess()
end

function Quest352:On35204CutsceneFinish()
    self:ShowGoddess()
    local actor = actorMgr:GetActor(self.clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 35205)
    end
end

function Quest352:OnSubFinish35200(arg1)
    print("35200 Finish: Paimon shimo to NPC")
    self.uActor:AvatarPaimonDisappear(nil, false)
    self:CallDelay(2, self.PaimonCreat)
end

function Quest352:OnSubFinish35201(arg1)
    print("35201 Finish : Cs_BigWorldShow_Cutscene")
    self:PlayCutsceneIndex(35201, self.On35201CutsceneFinish)
    self:CallDelay(3, function()
        globalActor:ChangeDay24Time(9, true)
    end)

    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end

    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end
end

function Quest352:OnSubStart35202(arg1)
    globalActor:ChangeDay24Time(9, true)
    globalActor:PlayerBackButtonOn(1, 3, "Q352View", 40, 9, 35202, 1)
end

function Quest352:OnSubStart35203(arg1)
    print("35203 Start: Follow Paimon")
    globalActor:PlayerBackButtonOff(1)
    local questNpcActor = self.GetQuestNpcActor(self, self.clientData.PaimonData.Paimon)
    self.CallDelay(self, 6.5, function(arg1)
        questNpcActor:NarratorTask(arg1.clientData.NarratorFlow, arg1.clientData.FollowLen, arg1.clientData.FollowLen, nil, "Story", arg1.mainQuestConfigID)
        arg1.stayWarningTask = questNpcActor:WarningNarratorTask(0, arg1.clientData.NarratorStayWarning, function(arg1_2)
            local distFromAvatarToSelf = arg1_2:GetDistFromAvatarToSelf()
            local n = arg1.clientData.FollowLen + 5
            local v = arg1.clientData.FollowLen + 15
            local isInIdle = arg1_2.IsInIdle
            return distFromAvatarToSelf > isInIdle and isInIdle
        end, nil, "StoryWarning", arg1.mainQuestConfigID)

        arg1.warningTask = questNpcActor:WarningNarratorTask(1, arg1.clientData.NarratorWarning, function(arg1_2)
            return arg1_2:GetDistFromAvatarToSelf() > arg1.clientData.FollowLen + 15
        end, nil, "StoryWarning", arg1.mainQuestConfigID)
    end)

    self.CallDelay(self, 5, function()
        questNpcActor:BeFollowTaskByRoutePoints(self.clientData.RoutePoints, self.clientData.FollowLen, self.clientData.FollowTransLen, function(arg1, arg2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                local actor = actorMgr:GetActor(self.clientData.ActorAlias)
                if actor ~= nil then
                    print("35203 failed1111111")
                    actor:FinishQuestID(true, 35203)
                end

                arg1:StopPerformNarrator()
            else
                if arg1.BeFollowState == BeFollowState.SUCCESS then
                    arg1:Standby()
                    arg1:TurnTo(M.Euler2DirXZ(self.clientData.PaimonData.Dir5))
                    local actor = actorMgr:GetActor(self.clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 35203)
                    end
                end
            end
        end, function(arg1, arg2)
            arg1:Standby(false)
        end)
    end)
end

function Quest352:OnSubFinish35203(arg1)
    print("35203 Finish : Clear Task")
    if self.stayWarningTask ~= nil then
        self.stayWarningTask:FinishTask()
    end

    if self.warningTask ~= nil then
        self.warningTask:FinishTask()
    end

    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
end

function Quest352:OnSubStart35204(arg1)
    print("35204 Start: ByQueen")
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    questNpcActor:NarratorTask(self.clientData.NarratorFlow2, 20, 20, nil)
    questNpcActor:AirModeOn()
    questNpcActor:ByQueen()
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q353Guide2").pos, 1, 3, true)
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, self.OnEnableInput)
end

function Quest352:OnEnableInput()
    print("Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest352:On35204CutsceneStart()
    self:HideGoddess()
end

function Quest352:OnSubFinish35204(arg1)
    print("35204 Finish: Cs_MDAQ010_UnlockSkill")
    self:PlayCutsceneIndex(35202, self.On35204CutsceneFinish, self.On35204CutsceneStart, self.On35204CutsceneDestroy)
end

function Quest352:Start() end
function Quest352:OnDestroy() end
return Quest352
