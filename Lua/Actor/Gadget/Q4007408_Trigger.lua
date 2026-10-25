require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007408_Trigger = class("Q4007408_Trigger", GadgetActorProxy)
Q4007408_Trigger.defaultAlias = "Q4007408_Trigger"
local Q40074ClientConfig = require("Quest/Client/Q40074ClientConfig")

local subIDs = Q40074ClientConfig.SubIDs
local npcs = Q40074ClientConfig.Npcs

function Q4007408_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007408_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(16.61317, 19.64741, 11.92123, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007408_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007408)
    self:DestroySelf()
end

function Q4007408_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007408_Trigger
