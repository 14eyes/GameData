require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009904Trigger_1 = class("Q7009904Trigger_1", GadgetActorProxy)
Q7009904Trigger_1.defaultAlias = "Q7009904Trigger_1"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7009904Trigger_1:OnPostDataPrepare()
    print("Q7009904Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7009904Trigger_1:OnPostComponentPrepare()
    print("Q7009904Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7009904Trigger_1:TriggerIn()
    print("Q7009904Trigger_1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7009904)
    this:DestroySelf()
end

function Q7009904Trigger_1:PreTriggerIn()
    print("Q7009904Trigger_1 - PreTriggerIn")
end

function Q7009904Trigger_1:LightUpTriggerIn()
    print("Q7009904Trigger_1 - LightUpTriggerIn")
end

function Q7009904Trigger_1:TriggerOut()
    print("Q7009904Trigger_1 - TriggerOut")
end

return Q7009904Trigger_1
