require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006512Trigger = class("Q7006512Trigger", GadgetActorProxy)
Q7006512Trigger.defaultAlias = "Q7006512Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006512Trigger:OnPostDataPrepare()
    print("Q7006512Trigger - OnPostDataPrepare")
    this = self
end

function Q7006512Trigger:OnPostComponentPrepare()
    print("Q7006512Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006512Trigger:TriggerIn()
    print("Q7006512Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006512)
    this:DestroySelf()
end

function Q7006512Trigger:PreTriggerIn()
    print("Q7006512Trigger - PreTriggerIn")
end

function Q7006512Trigger:LightUpTriggerIn()
    print("Q7006512Trigger - LightUpTriggerIn")
end

function Q7006512Trigger:TriggerOut()
    print("Q7006512Trigger - TriggerOut")
end

return Q7006512Trigger
