require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13023Trigger = class("Q13023Trigger", GadgetActorProxy)
Q13023Trigger.defaultAlias = "Q13023Trigger"
local Q13023ClientConfig = require("Quest/Client/Q13023ClientConfig")

local this
local subIDs = Q13023ClientConfig.SubIDs
local npcs = Q13023ClientConfig.Npcs

function Q13023Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13023Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 8, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13023Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13023"):RequestInteraction(npcs.Npc1053Data.alias)
end

function Q13023Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13023Trigger
