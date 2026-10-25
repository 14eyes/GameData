require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701735Trigger = class("Q701735Trigger", GadgetActorProxy)
Q701735Trigger.defaultAlias = "Q701735Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701735Trigger:OnPostDataPrepare()
    print("Q701735Trigger - OnPostDataPrepare")
    this = self
end

function Q701735Trigger:OnPostComponentPrepare()
    print("Q701735Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701735Trigger:TriggerIn()
    print("Q701735Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701735})
    this:DestroySelf()
end

function Q701735Trigger:PreTriggerIn()
    print("Q701735Trigger - PreTriggerIn")
end

function Q701735Trigger:LightUpTriggerIn()
    print("Q701735Trigger - LightUpTriggerIn")
end

function Q701735Trigger:TriggerOut()
    print("Q701735Trigger - TriggerOut")
end

return Q701735Trigger
