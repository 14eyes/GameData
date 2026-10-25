require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602807Trigger = class("Q7602807Trigger", GadgetActorProxy)
Q7602807Trigger.defaultAlias = "Q7602807Trigger"
local Q76028ClientConfig = require("Quest/Client/Q76028ClientConfig")

local this
local subIDs = Q76028ClientConfig.SubIDs
local datas = Q76028ClientConfig.Datas
local npcs = Q76028ClientConfig.Npcs
local points = Q76028ClientConfig.Points

function Q7602807Trigger:OnPostDataPrepare()
    print("Q7602807Trigger - OnPostDataPrepare")
    this = self
end

function Q7602807Trigger:OnPostComponentPrepare()
    print("Q7602807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76028)
end

function Q7602807Trigger:TriggerIn()
    print("Q7602807Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602807)
    this:DestroySelf()
end

function Q7602807Trigger:PreTriggerIn()
    print("Q7602807Trigger - PreTriggerIn")
end

function Q7602807Trigger:LightUpTriggerIn()
    print("Q7602807Trigger - LightUpTriggerIn")
end

function Q7602807Trigger:TriggerOut()
    print("Q7602807Trigger - TriggerOut")
end

return Q7602807Trigger
