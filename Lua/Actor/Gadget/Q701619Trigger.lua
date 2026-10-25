require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701619Trigger = class("Q701619Trigger", GadgetActorProxy)
Q701619Trigger.defaultAlias = "Q701619Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701619Trigger:OnPostDataPrepare()
    print("Q701619Trigger - OnPostDataPrepare")
    this = self
end

function Q701619Trigger:OnPostComponentPrepare()
    print("Q701619Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701619Trigger:TriggerIn()
    print("Q701619Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701619})
    this:DestroySelf()
end

function Q701619Trigger:PreTriggerIn()
    print("Q701619Trigger - PreTriggerIn")
end

function Q701619Trigger:LightUpTriggerIn()
    print("Q701619Trigger - LightUpTriggerIn")
end

function Q701619Trigger:TriggerOut()
    print("Q701619Trigger - TriggerOut")
end

return Q701619Trigger
