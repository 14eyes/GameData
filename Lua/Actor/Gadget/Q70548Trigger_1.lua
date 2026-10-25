require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70548Trigger_1 = class("Q70548Trigger_1", GadgetActorProxy)
Q70548Trigger_1.defaultAlias = "Q70548Trigger_1"
local Q70548ClientConfig = require("Quest/Client/Q70548ClientConfig")

local this
local subIDs = Q70548ClientConfig.SubIDs
local npcs = Q70548ClientConfig.Npcs
local points = Q70548ClientConfig.Points

function Q70548Trigger_1:OnPostDataPrepare()
    print("Q70548Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q70548Trigger_1:OnPostComponentPrepare()
    print("Q70548Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70548)
end

function Q70548Trigger_1:TriggerIn()
    print("Q70548Trigger_1 - TriggerIn")
    actorMgr:GetActor("70548"):RequestInteraction(npcs.Lisa.alias, "", true)
    this:DestroySelf()
end

function Q70548Trigger_1:PreTriggerIn()
    print("Q70548Trigger_1 - PreTriggerIn")
end

function Q70548Trigger_1:LightUpTriggerIn()
    print("Q70548Trigger_1 - LightUpTriggerIn")
end

function Q70548Trigger_1:TriggerOut()
    print("Q70548Trigger_1 - TriggerOut")
end

return Q70548Trigger_1
