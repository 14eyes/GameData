require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7330505Trigger1 = class("Q7330505Trigger1", GadgetActorProxy)
Q7330505Trigger1.defaultAlias = "Q7330505Trigger1"
local Q73305ClientConfig = require("Quest/Client/Q73305ClientConfig")

local this
local subIDs = Q73305ClientConfig.SubIDs
local npcs = Q73305ClientConfig.Npcs

function Q7330505Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7330505Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7330505Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7330505)
    this:DestroySelf()
end

function Q7330505Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q7330505Trigger1
