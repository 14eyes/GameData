require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321216Trigger = class("Q7321216Trigger", GadgetActorProxy)
Q7321216Trigger.defaultAlias = "Q7321216Trigger"
local Q73212ClientConfig = require("Quest/Client/Q73212ClientConfig")

local this
local subIDs = Q73212ClientConfig.SubIDs
local npcs = Q73212ClientConfig.Npcs
local datas = Q73212ClientConfig.Datas

function Q7321216Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321216Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7321216Trigger:TriggerIn()
    print("TriggerIn")
    this:EnablePlayerInput(true)
    this:CallDelay(0.4, function(arg1)
        this:EnablePlayerInput(true)
    end)

    actorMgr:GetActor("73212"):ShowBlackScreen(0.5, 1.5, 0, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7321209, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Q7321216Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321216Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321216Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321216Trigger
