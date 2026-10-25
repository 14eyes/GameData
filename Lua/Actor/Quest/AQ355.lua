require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest355 = class("Quest355", QuestActorProxy)
Quest355.defaultAlias = "Quest355"

function Quest355:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35501"] = self.OnSubStart35501
    self.subStartHandlers["35502"] = self.OnSubStart35502
    self.subStartHandlers["35503"] = self.OnSubStart35503
    self.subStartHandlers["35504"] = self.OnSubStart35504
    self.subStartHandlers["35505"] = self.OnSubStart35505
end

function Quest355:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35501"] = self.OnSubFinish35501
    self.subFinishHandlers["35502"] = self.OnSubFinish35502
    self.subFinishHandlers["35503"] = self.OnSubFinish35503
    self.subFinishHandlers["35504"] = self.OnSubFinish35504
    self.subFinishHandlers["35505"] = self.OnSubFinish35505
end

function Quest355:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest355:On35502CutsceneFinish()
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.Tear)
end

function Quest355:Tear()
    self:RequestInteraction(self.clientData.PaimonData.Paimon)
    local tearData = self.clientData.TearData
    self:UnSpawn("Tear")
    self:SpawnItemById(35503, tearData.TearID, 1)
end

function Quest355:Story1()
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1, nil, "Story")
end

function Quest355:OnSubStart35503(arg1)
    print("35503 Start : Play Cutscene & Creat Paimon")
    self:PlayCutsceneIndex(35501, self.On35502CutsceneFinish)
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpc(arg1, paimonData.PaimonID)
end

function Quest355:OnSubFinish35503(arg1)
    print("35503 Finish : Paimon to Paimon2 & Spawn Tears")
    self.ActionSafeCall(self, self.Story1)
    local questNpcActor = self.GetQuestNpcActor(self, self.clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, self.clientData.InterData.NoReplyInter)
    questNpcActor:RunToTask(self.clientData.PaimonData.Pos2, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:ClearPriorityInter(InterTimingType.BTN)
        arg1:DoFreeStyle(1200)
        arg1:TurnTo(M.Euler2DirXZ(self.clientData.PaimonData.Dir2))
    end)
end

function Quest355:OnSubStart35501(arg1)
    self:SetNavigationByMainId(355, true)
end

function Quest355:OnSubStart35504(arg1) end
function Quest355:OnSubFinish35504(arg1) end

function Quest355:OnSubStart35505(arg1)
    self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

function Quest355:OnSubFinish35505(arg1)
    print("35505 Finish : Paimon Vanish")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest355:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Now Spawn Tears")
        local tearData = self.clientData.TearData
        self:UnSpawn("Tear")
        self:SpawnItemById(35505, tearData.TearID, 1)
    elseif arg1 == 5 then
        print("Now Destroy Tears")
        self:UnSpawn("Tear")
    end
end

function Quest355:Start() end
function Quest355:OnDestroy() end
return Quest355
