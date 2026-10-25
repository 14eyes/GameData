require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304905Trigger = class("Q7304905Trigger", GadgetActorProxy)
Q7304905Trigger.defaultAlias = "Q7304905Trigger"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304905Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304905Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304905Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73049")
    actor:CallDelay(0, function(arg1)
        actorMgr:GetActor("73049"):EnablePlayerInput(false)
    end)

    actor:CallDelay(0.4, function(arg1)
        actorMgr:GetActor("73049"):EnablePlayerInput(true)
    end)

    actor:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = -0.05
        local v = 1
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * v
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        local v2 = avatarForward
        v2.x = v2.x * -0.1
        v2.z = v2.z * -1
        arg1.CreateQuestNpcByIdWithPos(arg1, 7304905, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, "QUEST_Message_Q7212301", false, true)

    self:DestroySelf()
end

function Q7304905Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7304905Trigger
