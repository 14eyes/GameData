require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006526Trigger = class("Q7006526Trigger", GadgetActorProxy)
Q7006526Trigger.defaultAlias = "Q7006526Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006526Trigger:OnPostDataPrepare()
    print("Q7006526Trigger - OnPostDataPrepare")
    this = self
end

function Q7006526Trigger:OnPostComponentPrepare()
    print("Q7006526Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(11.980388, 15.186684, 25.23395, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006526Trigger:TriggerIn()
    print("Q7006526Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006526)
    this:DestroySelf()
end

function Q7006526Trigger:PreTriggerIn()
    print("Q7006526Trigger - PreTriggerIn")
end

function Q7006526Trigger:LightUpTriggerIn()
    print("Q7006526Trigger - LightUpTriggerIn")
end

function Q7006526Trigger:TriggerOut()
    print("Q7006526Trigger - TriggerOut")
end

return Q7006526Trigger
