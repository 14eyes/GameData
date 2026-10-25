require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601612Trigger = class("Q7601612Trigger", GadgetActorProxy)
Q7601612Trigger.defaultAlias = "Q7601612Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601612Trigger:OnPostDataPrepare()
    print("Q7601612Trigger - OnPostDataPrepare")
    this = self
end

function Q7601612Trigger:OnPostComponentPrepare()
    print("Q7601612Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601612Trigger:TriggerIn()
    print("Q7601612Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601612)
    this:DestroySelf()
end

function Q7601612Trigger:PreTriggerIn()
    print("Q7601612Trigger - PreTriggerIn")
end

function Q7601612Trigger:LightUpTriggerIn()
    print("Q7601612Trigger - LightUpTriggerIn")
end

function Q7601612Trigger:TriggerOut()
    print("Q7601612Trigger - TriggerOut")
end

return Q7601612Trigger
