require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701326Trigger = class("Q701326Trigger", GadgetActorProxy)
Q701326Trigger.defaultAlias = "Q701326Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701326Trigger:OnPostDataPrepare()
    print("Q701326Trigger - OnPostDataPrepare")
    this = self
end

function Q701326Trigger:OnPostComponentPrepare()
    print("Q701326Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701326Trigger:TriggerIn()
    print("Q701326Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701326})
    this:DestroySelf()
end

function Q701326Trigger:PreTriggerIn()
    print("Q701326Trigger - PreTriggerIn")
end

function Q701326Trigger:LightUpTriggerIn()
    print("Q701326Trigger - LightUpTriggerIn")
end

function Q701326Trigger:TriggerOut()
    print("Q701326Trigger - TriggerOut")
end

return Q701326Trigger
