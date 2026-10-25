require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602216Trigger = class("Q602216Trigger", GadgetActorProxy)
Q602216Trigger.defaultAlias = "Q602216Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602216Trigger:OnPostDataPrepare()
    print("Q602216Trigger - OnPostDataPrepare")
    this = self
end

function Q602216Trigger:OnPostComponentPrepare()
    print("Q602216Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602216Trigger:TriggerIn()
    print("Q602216Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602216)
    this:DestroySelf()
end

function Q602216Trigger:PreTriggerIn()
    print("Q602216Trigger - PreTriggerIn")
end

function Q602216Trigger:LightUpTriggerIn()
    print("Q602216Trigger - LightUpTriggerIn")
end

function Q602216Trigger:TriggerOut()
    print("Q602216Trigger - TriggerOut")
end

return Q602216Trigger
