require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006545Trigger = class("Q7006545Trigger", GadgetActorProxy)
Q7006545Trigger.defaultAlias = "Q7006545Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006545Trigger:OnPostDataPrepare()
    print("Q7006545Trigger - OnPostDataPrepare")
    this = self
end

function Q7006545Trigger:OnPostComponentPrepare()
    print("Q7006545Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(38.752956, 10.373115, 33.914227, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006545Trigger:TriggerIn()
    print("Q7006545Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006545)
    this:DestroySelf()
end

function Q7006545Trigger:PreTriggerIn()
    print("Q7006545Trigger - PreTriggerIn")
end

function Q7006545Trigger:LightUpTriggerIn()
    print("Q7006545Trigger - LightUpTriggerIn")
end

function Q7006545Trigger:TriggerOut()
    print("Q7006545Trigger - TriggerOut")
end

return Q7006545Trigger
