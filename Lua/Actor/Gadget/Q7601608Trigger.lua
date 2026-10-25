require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601608Trigger = class("Q7601608Trigger", GadgetActorProxy)
Q7601608Trigger.defaultAlias = "Q7601608Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601608Trigger:OnPostDataPrepare()
    print("Q7601608Trigger - OnPostDataPrepare")
    this = self
end

function Q7601608Trigger:OnPostComponentPrepare()
    print("Q7601608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601608Trigger:TriggerIn()
    print("Q7601608Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601608)
    this:DestroySelf()
end

function Q7601608Trigger:PreTriggerIn()
    print("Q7601608Trigger - PreTriggerIn")
end

function Q7601608Trigger:LightUpTriggerIn()
    print("Q7601608Trigger - LightUpTriggerIn")
end

function Q7601608Trigger:TriggerOut()
    print("Q7601608Trigger - TriggerOut")
end

return Q7601608Trigger
