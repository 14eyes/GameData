require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73298Trigger = class("Q73298Trigger", GadgetActorProxy)
Q73298Trigger.defaultAlias = "Q73298Trigger"
local Q73298ClientConfig = require("Quest/Client/Q73298ClientConfig")

local this
local subIDs = Q73298ClientConfig.SubIDs
local npcs = Q73298ClientConfig.Npcs

function Q73298Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73298Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73298Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73298"):ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
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
        arg1.CreateQuestNpcByIdWithPos(arg1, 7329803, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        arg1.CallDelay(arg1, 1, function()
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, 0, false, true)
end

function Q73298Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73298Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73298Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73298Trigger
