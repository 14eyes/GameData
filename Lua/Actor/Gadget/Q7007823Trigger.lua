require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007823Trigger = class("Q7007823Trigger", GadgetActorProxy)
Q7007823Trigger.defaultAlias = "Q7007823Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007823Trigger:OnPostDataPrepare()
    print("Q7007823Trigger - OnPostDataPrepare")
    this = self
end

function Q7007823Trigger:OnPostComponentPrepare()
    print("Q7007823Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007823Trigger:TriggerIn()
    print("Q7007823Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007823)
    this:DestroySelf()
end

function Q7007823Trigger:PreTriggerIn()
    print("Q7007823Trigger - PreTriggerIn")
end

function Q7007823Trigger:LightUpTriggerIn()
    print("Q7007823Trigger - LightUpTriggerIn")
end

function Q7007823Trigger:TriggerOut()
    print("Q7007823Trigger - TriggerOut")
end

return Q7007823Trigger
