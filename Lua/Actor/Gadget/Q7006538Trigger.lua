require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006538Trigger = class("Q7006538Trigger", GadgetActorProxy)
Q7006538Trigger.defaultAlias = "Q7006538Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006538Trigger:OnPostDataPrepare()
    print("Q7006538Trigger - OnPostDataPrepare")
    this = self
end

function Q7006538Trigger:OnPostComponentPrepare()
    print("Q7006538Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18.863129, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006538Trigger:TriggerIn()
    print("Q7006538Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006538)
    this:DestroySelf()
end

function Q7006538Trigger:PreTriggerIn()
    print("Q7006538Trigger - PreTriggerIn")
end

function Q7006538Trigger:LightUpTriggerIn()
    print("Q7006538Trigger - LightUpTriggerIn")
end

function Q7006538Trigger:TriggerOut()
    print("Q7006538Trigger - TriggerOut")
end

return Q7006538Trigger
