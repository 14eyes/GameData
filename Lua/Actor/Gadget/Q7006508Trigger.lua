require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006508Trigger = class("Q7006508Trigger", GadgetActorProxy)
Q7006508Trigger.defaultAlias = "Q7006508Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006508Trigger:OnPostDataPrepare()
    print("Q7006508Trigger - OnPostDataPrepare")
    this = self
end

function Q7006508Trigger:OnPostComponentPrepare()
    print("Q7006508Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(1.7251021, 5.9887924, 9.360332, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006508Trigger:TriggerIn()
    print("Q7006508Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006508)
    this:DestroySelf()
end

function Q7006508Trigger:PreTriggerIn()
    print("Q7006508Trigger - PreTriggerIn")
end

function Q7006508Trigger:LightUpTriggerIn()
    print("Q7006508Trigger - LightUpTriggerIn")
end

function Q7006508Trigger:TriggerOut()
    print("Q7006508Trigger - TriggerOut")
end

return Q7006508Trigger
