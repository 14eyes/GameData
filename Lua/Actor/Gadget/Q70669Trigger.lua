require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70669Trigger = class("Q70669Trigger", GadgetActorProxy)
Q70669Trigger.defaultAlias = "Q70669Trigger"
local Q70669ClientConfig = require("Quest/Client/Q70669ClientConfig")

local this
local subIDs = Q70669ClientConfig.SubIDs
local npcs = Q70669ClientConfig.Npcs

function Q70669Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70669Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.LightUpTriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
end

function Q70669Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({npcs.Npc1713Data.alias})
    actorMgr:GetActor("70669"):ShowBlackScreenWithDialogText(0, 1, 1.5, function(arg1)
        arg1:RequestInteractionForceAlias("Npc1713")
    end, nil, entityCreateTask)

    this:DestroySelf()
end

function Q70669Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70669Trigger
