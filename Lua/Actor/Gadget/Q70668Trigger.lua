require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70668Trigger = class("Q70668Trigger", GadgetActorProxy)
Q70668Trigger.defaultAlias = "Q70668Trigger"
local Q70668ClientConfig = require("Quest/Client/Q70668ClientConfig")

local this
local subIDs = Q70668ClientConfig.SubIDs
local npcs = Q70668ClientConfig.Npcs

function Q70668Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70668Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.LightUpTriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
end

function Q70668Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({npcs.Npc1713Data.alias})
    actorMgr:GetActor("70668"):ShowBlackScreenWithDialogText(0, 1, 1.5, function(arg1)
        arg1:RequestInteractionForceAlias("Npc1713")
    end, nil, entityCreateTask)

    this:DestroySelf()
end

function Q70668Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70668Trigger
