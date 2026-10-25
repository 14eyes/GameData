require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610108Trigger = class("Q7610108Trigger", GadgetActorProxy)
Q7610108Trigger.defaultAlias = "Q7610108Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610108Trigger:OnPostDataPrepare()
    print("Q7610108Trigger - OnPostDataPrepare")
    this = self
end

function Q7610108Trigger:OnPostComponentPrepare()
    print("Q7610108Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610108Trigger:TriggerIn()
    print("Q7610108Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610108)
    this:DestroySelf()
end

function Q7610108Trigger:PreTriggerIn()
    print("Q7610108Trigger - PreTriggerIn")
end

function Q7610108Trigger:LightUpTriggerIn()
    print("Q7610108Trigger - LightUpTriggerIn")
end

function Q7610108Trigger:TriggerOut()
    print("Q7610108Trigger - TriggerOut")
end

return Q7610108Trigger
