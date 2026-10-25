require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest998 = class("Quest998", QuestActorProxy)
Quest998.defaultAlias = "Quest998"

function Quest998:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99801"] = self.OnSubStart99801
    self.subStartHandlers["99802"] = self.OnSubStart99802
    self.subStartHandlers["99803"] = self.OnSubStart99803
    self.subStartHandlers["99804"] = self.OnSubStart99804
    self.subStartHandlers["99805"] = self.OnSubStart99805
    self.subStartHandlers["99806"] = self.OnSubStart99806
    self.subStartHandlers["99807"] = self.OnSubStart99807
end

function Quest998:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99801"] = self.OnSubFinish99801
    self.subFinishHandlers["99802"] = self.OnSubFinish99802
    self.subFinishHandlers["99803"] = self.OnSubFinish99803
    self.subFinishHandlers["99804"] = self.OnSubFinish99804
    self.subFinishHandlers["99805"] = self.OnSubFinish99805
end

function Quest998:OnSubStart99801(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 1, 2)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    print("99801\229\133\168\229\177\128\229\143\152\233\135\143\228\184\186", questVar)
end

function Quest998:OnSubStart99802(arg1)
    local posB = self.clientData.TargetPos.PosB
    local actor = actorMgr:GetActor(self.clientData.TargetNpc)
    self.uActor:AvatarPaimonAppear()
    actor:ClearFollowTask()
    actor:WalkToTask(posB.pos, function(arg1, arg2)
        self:FinishQuest(false, nil)
        arg1:TurnTo(M.Euler2DirXZ(posB.rot))
        arg1:Standby()
    end)
end

function Quest998:OnSubStart99803(arg1) end

function Quest998:OnSubStart99804(arg1)
    local posC = self.clientData.TargetPos.PosC
    local actor = actorMgr:GetActor(self.clientData.TargetNpc)
    actor:ClearFollowTask()
    actor:RunToTask(posC.pos, function(arg1, arg2)
        self:FinishQuest(false, nil)
        arg1:TurnTo(M.Euler2DirXZ(posC.rot))
        arg1:Standby()
    end)
end

function Quest998:OnSubStart99805(arg1)
    self.uActor:AvatarPaimonDisappear(nil, true)
end

function Quest998:OnSubStart99806(arg1)
    self:CreateQuestNpc(arg1, 1001)
end

function Quest998:OnSubStart99807(arg1)
    self:CreateQuestNpc(arg1, 1006)
end

function Quest998:OnSubFinish99801(arg1) end
function Quest998:OnSubFinish99802(arg1) end
function Quest998:OnSubFinish99803(arg1) end
function Quest998:OnSubFinish99804(arg1) end
function Quest998:OnSubFinish99805(arg1) end
function Quest998:Start() end
function Quest998:OnDestroy() end
return Quest998
