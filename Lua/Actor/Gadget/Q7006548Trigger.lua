require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006548Trigger = class("Q7006548Trigger", GadgetActorProxy)
Q7006548Trigger.defaultAlias = "Q7006548Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006548Trigger:OnPostDataPrepare()
    print("Q7006548Trigger - OnPostDataPrepare")
    this = self
end

function Q7006548Trigger:OnPostComponentPrepare()
    print("Q7006548Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006548Trigger:TriggerIn()
    print("Q7006548Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006548)
    this:DestroySelf()
end

function Q7006548Trigger:PreTriggerIn()
    print("Q7006548Trigger - PreTriggerIn")
end

function Q7006548Trigger:LightUpTriggerIn()
    print("Q7006548Trigger - LightUpTriggerIn")
end

function Q7006548Trigger:TriggerOut()
    print("Q7006548Trigger - TriggerOut")
end

return Q7006548Trigger
