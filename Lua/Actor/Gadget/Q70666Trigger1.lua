require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70666Trigger1 = class("Q70666Trigger1", GadgetActorProxy)
Q70666Trigger1.defaultAlias = "Q70666Trigger1"
local Q70666ClientConfig = require("Quest/Client/Q70666ClientConfig")

local this
local subIDs = Q70666ClientConfig.SubIDs
local npcs = Q70666ClientConfig.Npcs

function Q70666Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70666Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.LightUpTriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
end

function Q70666Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({npcs.Npc1713Data.alias})
    actorMgr:GetActor("70666"):ShowBlackScreenWithDialogText(0, 1, 1.5, function(arg1)
        arg1:RequestInteractionForceAlias("Npc1713")
    end, nil, entityCreateTask)

    this:DestroySelf()
end

function Q70666Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q70666Trigger1
