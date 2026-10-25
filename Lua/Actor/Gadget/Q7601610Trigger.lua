require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601610Trigger = class("Q7601610Trigger", GadgetActorProxy)
Q7601610Trigger.defaultAlias = "Q7601610Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601610Trigger:OnPostDataPrepare()
    print("Q7601610Trigger - OnPostDataPrepare")
    this = self
end

function Q7601610Trigger:OnPostComponentPrepare()
    print("Q7601610Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601610Trigger:TriggerIn()
    print("Q7601610Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601610)
    this:DestroySelf()
end

function Q7601610Trigger:PreTriggerIn()
    print("Q7601610Trigger - PreTriggerIn")
end

function Q7601610Trigger:LightUpTriggerIn()
    print("Q7601610Trigger - LightUpTriggerIn")
end

function Q7601610Trigger:TriggerOut()
    print("Q7601610Trigger - TriggerOut")
end

return Q7601610Trigger
