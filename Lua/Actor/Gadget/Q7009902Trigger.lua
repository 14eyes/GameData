require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009902Trigger = class("Q7009902Trigger", GadgetActorProxy)
Q7009902Trigger.defaultAlias = "Q7009902Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7009902Trigger:OnPostDataPrepare()
    print("Q7009902Trigger - OnPostDataPrepare")
    this = self
end

function Q7009902Trigger:OnPostComponentPrepare()
    print("Q7009902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7009902Trigger:TriggerIn()
    print("Q7009902Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7009902Trigger:PreTriggerIn()
    print("Q7009902Trigger - PreTriggerIn")
end

function Q7009902Trigger:LightUpTriggerIn()
    print("Q7009902Trigger - LightUpTriggerIn")
end

function Q7009902Trigger:TriggerOut()
    print("Q7009902Trigger - TriggerOut")
end

return Q7009902Trigger
