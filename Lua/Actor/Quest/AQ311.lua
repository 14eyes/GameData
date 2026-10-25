require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest311 = class("Quest311", QuestActorProxy)
Quest311.defaultAlias = "Quest311"
local paimonData = require("Quest/Client/Q311ClientConfig").PaimonData

function Quest311:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["31101"] = self.OnSubStart31101
    self.subStartHandlers["31102"] = self.OnSubStart31102
    self.subStartHandlers["31103"] = self.OnSubStart31103
    self.subStartHandlers["31104"] = self.OnSubStart31104
end

function Quest311:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["31101"] = self.OnSubFinish31101
    self.subFinishHandlers["31102"] = self.OnSubFinish31102
    self.subFinishHandlers["31103"] = self.OnSubFinish31103
    self.subFinishHandlers["31104"] = self.OnSubFinish31104
end

function Quest311:OnSubStart31101(arg1)
    print("31101 Start : Creat Paimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcWithPos(arg1, paimonData.PaimonID, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(paimonData.Paimon)
    self:CallDelay(2, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest311:OnSubFinish31101(arg1)
    print("31101 Finish : Paimon Vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    globalActor:StartGuide("GuidePlayerLV1")
end

function Quest311:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("311 Invoke : ")
        globalActor:EnablePlayerInput(true)
    end
end

function Quest311:Start() end
function Quest311:OnDestroy() end
return Quest311
