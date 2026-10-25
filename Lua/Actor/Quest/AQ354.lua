require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest354 = class("Quest354", QuestActorProxy)
Quest354.defaultAlias = "Quest354"

function Quest354:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35401"] = self.OnSubStart35401
    self.subStartHandlers["35402"] = self.OnSubStart35402
    self.subStartHandlers["35403"] = self.OnSubStart35403
    self.subStartHandlers["35404"] = self.OnSubStart35404
    self.subStartHandlers["35405"] = self.OnSubStart35405
end

function Quest354:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35401"] = self.OnSubFinish35401
    self.subFinishHandlers["35402"] = self.OnSubFinish35402
    self.subFinishHandlers["35403"] = self.OnSubFinish35403
    self.subFinishHandlers["35404"] = self.OnSubFinish35404
    self.subFinishHandlers["35405"] = self.OnSubFinish35405
end

function Quest354:On35401CutsceneFinish()
    self:RequestInteraction(self.clientData.AmborData.Ambor)
end

function Quest354:AmborHide()
    self:ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        globalActor:StopLocalAvatar()
        globalActor:EnablePlayerInput(false)
        arg1:CallDelay(1, arg1.OnEnableInputAndStartGuide)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q354Center").pos, 0, 3, true)
        actorUtils.SetAvatarEuler(sceneData:GetDummyPoint(3, "Q354SetAvatar").rot)
        arg1:SetNavigationByMainId(354, true)
    end)
end

function Quest354:OnEnableInputAndStartGuide()
    print("354 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
    globalActor:StartGuide("GuideChooseAmbor")
end

function Quest354:On35403CutsceneFinish()
    local amborData = self.clientData.AmborData
    self:CreateQuestNpcById(35403, amborData.AmborID)
end

function Quest354:OnSubFinish35401(arg1)
    print("35401 Finish : Cs_AM_FirstArrive_CutScene2")
    globalActor:StopLocalAvatar()
    local amborData = self.clientData.AmborData
    self:CreateQuestNpcById(35401, amborData.AmborID)
    self:PlayCutsceneIndex(35401, self.On35401CutsceneFinish)
end

function Quest354:OnSubFinish35402(arg1)
    local questNpcActor = self:GetQuestNpcActor(self.clientData.AmborData.Ambor)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if v ~= nil then
        v:DestroyWithDisappear(false)
    end
end

function Quest354:OnSubStart35404(arg1)
    print("35404 Start: Ambor VanishDirect Show TeamPage")
    self:ActionSafeCall(self.AmborHide)
end

function Quest354:OnSubFinish35403(arg1)
    print("35403 Finish: Cs_MDAQ018_MDCityShow")
    actorMgr:GetActor("Q354Trigger1"):DestroySelf()
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q360qqLook1").pos, 1, 2, true)
    self:ClearNarratorTask()
    globalActor:StopLocalAvatar()
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, self.OnEnableInput)
    self:CallDelay(1, self.Story3)
end

function Quest354:OnEnableInput()
    print("354 Finish: Enable Player Input")
    globalActor:EnablePlayerInput(true)
end

function Quest354:Story3()
    globalActor:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story3, nil, "Story")
end

function Quest354:OnSubFinish35404(arg1)
    print("35404 Finish: trigger1")
    actorMgr:CreateActorWithPos("Q354Trigger1", "Actor/Gadget/Q354Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q354SetAvatar").pos, sceneData:GetDummyPoint(3, "Q354SetAvatar").rot, true, false)
end

function Quest354:OnSubFinish35405(arg1)
    print("35405 Finish: Story4")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2, nil, "Story")
end

function Quest354:Start() end
function Quest354:OnDestroy() end
return Quest354
