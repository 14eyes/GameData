require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009904Trigger = class("Q7009904Trigger", GadgetActorProxy)
Q7009904Trigger.defaultAlias = "Q7009904Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7009904Trigger:OnPostDataPrepare()
    print("Q7009904Trigger - OnPostDataPrepare")
    this = self
end

function Q7009904Trigger:OnPostComponentPrepare()
    print("Q7009904Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7009904Trigger:TriggerIn()
    print("Q7009904Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7009904)
    this:DestroySelf()
end

function Q7009904Trigger:PreTriggerIn()
    print("Q7009904Trigger - PreTriggerIn")
end

function Q7009904Trigger:LightUpTriggerIn()
    print("Q7009904Trigger - LightUpTriggerIn")
end

function Q7009904Trigger:TriggerOut()
    print("Q7009904Trigger - TriggerOut")
end

return Q7009904Trigger
