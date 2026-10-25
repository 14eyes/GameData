require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2051735Trigger = class("Q2051735Trigger", GadgetActorProxy)
Q2051735Trigger.defaultAlias = "Q2051735Trigger"
local Q20517ClientConfig = require("Quest/Client/Q20517ClientConfig")

local paimonData = Q20517ClientConfig.PaimonData
local actor = actorMgr:GetActor(Q20517ClientConfig.ActorAlias)

function Q2051735Trigger:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.2, 0.8, 0.2, function(arg1)
        local actor = actorMgr:GetActor(Q20517ClientConfig.ActorAlias)
        print("Q2051735Trigger In : Create Paimon")
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        actor:CreateQuestNpcByIdWithPos(2051735, 1005, 9, avatarPos, M.Dir2Euler(v))
        actor:RequestInteraction("Paimon")
    end)

    globalActor:EnablePlayerInput(true)
end

function Q2051735Trigger:OnPostDataPrepare() end

function Q2051735Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q2051735Trigger:TriggerIn()
    self:BlackScreen()
    self:DestroySelf()
end

function Q2051735Trigger:TriggerOut()
    print("Q2051735Trigger Out : Destory Paimon")
end

return Q2051735Trigger
