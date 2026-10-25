require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009903Trigger = class("Q7009903Trigger", GadgetActorProxy)
Q7009903Trigger.defaultAlias = "Q7009903Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7009903Trigger:OnPostDataPrepare()
    print("Q7009903Trigger - OnPostDataPrepare")
    this = self
end

function Q7009903Trigger:OnPostComponentPrepare()
    print("Q7009903Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7009903Trigger:TriggerIn()
    print("Q7009903Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7009903)
    this:DestroySelf()
end

function Q7009903Trigger:PreTriggerIn()
    print("Q7009903Trigger - PreTriggerIn")
end

function Q7009903Trigger:LightUpTriggerIn()
    print("Q7009903Trigger - LightUpTriggerIn")
end

function Q7009903Trigger:TriggerOut()
    print("Q7009903Trigger - TriggerOut")
end

return Q7009903Trigger
