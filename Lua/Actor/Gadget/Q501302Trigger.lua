require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501302Trigger = class("Q501302Trigger", GadgetActorProxy)
Q501302Trigger.defaultAlias = "Q501302Trigger"
local Q5013ClientConfig = require("Quest/Client/Q5013ClientConfig")

local this
local subIDs = Q5013ClientConfig.SubIDs
local datas = Q5013ClientConfig.Datas
local npcs = Q5013ClientConfig.Npcs
local points = Q5013ClientConfig.Points

function Q501302Trigger:OnPostDataPrepare()
    print("Q501302Trigger - OnPostDataPrepare")
    this = self
end

function Q501302Trigger:OnPostComponentPrepare()
    print("Q501302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5013)
end

function Q501302Trigger:TriggerIn()
    print("Q501302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501302)
    this:DestroySelf()
end

function Q501302Trigger:PreTriggerIn()
    print("Q501302Trigger - PreTriggerIn")
end

function Q501302Trigger:LightUpTriggerIn()
    print("Q501302Trigger - LightUpTriggerIn")
end

function Q501302Trigger:TriggerOut()
    print("Q501302Trigger - TriggerOut")
end

return Q501302Trigger
