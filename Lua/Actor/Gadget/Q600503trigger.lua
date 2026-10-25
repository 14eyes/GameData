require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600503trigger = class("Q600503trigger", GadgetActorProxy)
Q600503trigger.defaultAlias = "Q600503trigger"
local Q6005ClientConfig = require("Quest/Client/Q6005ClientConfig")

local this
local subIDs = Q6005ClientConfig.SubIDs
local datas = Q6005ClientConfig.Datas
local npcs = Q6005ClientConfig.Npcs
local points = Q6005ClientConfig.Points

function Q600503trigger:OnPostDataPrepare()
    print("Q600503trigger - OnPostDataPrepare")
    this = self
end

function Q600503trigger:OnPostComponentPrepare()
    print("Q600503trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6005)
end

function Q600503trigger:TriggerIn()
    print("Q600503trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600503)
    this:DestroySelf()
end

function Q600503trigger:PreTriggerIn()
    print("Q600503trigger - PreTriggerIn")
end

function Q600503trigger:LightUpTriggerIn()
    print("Q600503trigger - LightUpTriggerIn")
end

function Q600503trigger:TriggerOut()
    print("Q600503trigger - TriggerOut")
end

return Q600503trigger
