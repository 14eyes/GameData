require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701613Trigger = class("Q701613Trigger", GadgetActorProxy)
Q701613Trigger.defaultAlias = "Q701613Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701613Trigger:OnPostDataPrepare()
    print("Q701613Trigger - OnPostDataPrepare")
    this = self
end

function Q701613Trigger:OnPostComponentPrepare()
    print("Q701613Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701613Trigger:TriggerIn()
    print("Q701613Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701613})
    this:DestroySelf()
end

function Q701613Trigger:PreTriggerIn()
    print("Q701613Trigger - PreTriggerIn")
end

function Q701613Trigger:LightUpTriggerIn()
    print("Q701613Trigger - LightUpTriggerIn")
end

function Q701613Trigger:TriggerOut()
    print("Q701613Trigger - TriggerOut")
end

return Q701613Trigger
