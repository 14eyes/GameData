require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009901Trigger = class("Q7009901Trigger", GadgetActorProxy)
Q7009901Trigger.defaultAlias = "Q7009901Trigger"
local Q70099ClientConfig = require("Quest/Client/Q70099ClientConfig")

local this
local subIDs = Q70099ClientConfig.SubIDs
local datas = Q70099ClientConfig.Datas
local npcs = Q70099ClientConfig.Npcs
local points = Q70099ClientConfig.Points

function Q7009901Trigger:OnPostDataPrepare()
    print("Q7009901Trigger - OnPostDataPrepare")
    this = self
end

function Q7009901Trigger:OnPostComponentPrepare()
    print("Q7009901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70099)
end

function Q7009901Trigger:TriggerIn()
    print("Q7009901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7009901)
    this:DestroySelf()
end

function Q7009901Trigger:PreTriggerIn()
    print("Q7009901Trigger - PreTriggerIn")
end

function Q7009901Trigger:LightUpTriggerIn()
    print("Q7009901Trigger - LightUpTriggerIn")
end

function Q7009901Trigger:TriggerOut()
    print("Q7009901Trigger - TriggerOut")
end

return Q7009901Trigger
