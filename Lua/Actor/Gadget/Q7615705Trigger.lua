require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615705Trigger = class("Q7615705Trigger", GadgetActorProxy)
Q7615705Trigger.defaultAlias = "Q7615705Trigger"
local Q76157ClientConfig = require("Quest/Client/Q76157ClientConfig")

local this
local subIDs = Q76157ClientConfig.SubIDs
local npcs = Q76157ClientConfig.Npcs
local points = Q76157ClientConfig.Points

function Q7615705Trigger:OnPostDataPrepare()
    print("Q7615705Trigger - OnPostDataPrepare")
    this = self
end

function Q7615705Trigger:OnPostComponentPrepare()
    print("Q7615705Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76157)
end

function Q7615705Trigger:TriggerIn()
    print("Q7615705Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615705)
    this:DestroySelf()
end

function Q7615705Trigger:PreTriggerIn()
    print("Q7615705Trigger - PreTriggerIn")
end

function Q7615705Trigger:LightUpTriggerIn()
    print("Q7615705Trigger - LightUpTriggerIn")
end

function Q7615705Trigger:TriggerOut()
    print("Q7615705Trigger - TriggerOut")
end

return Q7615705Trigger
