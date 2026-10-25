require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701601Trigger = class("Q701601Trigger", GadgetActorProxy)
Q701601Trigger.defaultAlias = "Q701601Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701601Trigger:OnPostDataPrepare()
    print("Q701601Trigger - OnPostDataPrepare")
    this = self
end

function Q701601Trigger:OnPostComponentPrepare()
    print("Q701601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701601Trigger:TriggerIn()
    print("Q701601Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701601})
    this:DestroySelf()
end

function Q701601Trigger:PreTriggerIn()
    print("Q701601Trigger - PreTriggerIn")
end

function Q701601Trigger:LightUpTriggerIn()
    print("Q701601Trigger - LightUpTriggerIn")
end

function Q701601Trigger:TriggerOut()
    print("Q701601Trigger - TriggerOut")
end

return Q701601Trigger
