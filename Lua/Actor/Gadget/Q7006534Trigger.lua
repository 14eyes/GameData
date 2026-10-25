require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006534Trigger = class("Q7006534Trigger", GadgetActorProxy)
Q7006534Trigger.defaultAlias = "Q7006534Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006534Trigger:OnPostDataPrepare()
    print("Q7006534Trigger - OnPostDataPrepare")
    this = self
end

function Q7006534Trigger:OnPostComponentPrepare()
    print("Q7006534Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006534Trigger:TriggerIn()
    print("Q7006534Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006534)
    this:DestroySelf()
end

function Q7006534Trigger:PreTriggerIn()
    print("Q7006534Trigger - PreTriggerIn")
end

function Q7006534Trigger:LightUpTriggerIn()
    print("Q7006534Trigger - LightUpTriggerIn")
end

function Q7006534Trigger:TriggerOut()
    print("Q7006534Trigger - TriggerOut")
end

return Q7006534Trigger
