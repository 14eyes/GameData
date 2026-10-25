require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513602_Trigger = class("Q7513602_Trigger", GadgetActorProxy)
Q7513602_Trigger.defaultAlias = "Q7513602_Trigger"
local Q75136ClientConfig = require("Quest/Client/Q75136ClientConfig")

local this
local subIDs = Q75136ClientConfig.SubIDs
local npcs = Q75136ClientConfig.Npcs

function Q7513602_Trigger:OnPostDataPrepare()
    print("Q7513602_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513602_Trigger:OnPostComponentPrepare()
    print("Q7513602_Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(31.633432, 54.833496, 40.96896, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75136)
end

function Q7513602_Trigger:TriggerIn()
    print("Q7513602_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513602)
    this:DestroySelf()
end

function Q7513602_Trigger:PreTriggerIn()
    print("Q7513602_Trigger - PreTriggerIn")
end

function Q7513602_Trigger:LightUpTriggerIn()
    print("Q7513602_Trigger - LightUpTriggerIn")
end

function Q7513602_Trigger:TriggerOut()
    print("Q7513602_Trigger - TriggerOut")
end

return Q7513602_Trigger
