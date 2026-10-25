require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80505Trigger = class("Q80505Trigger", GadgetActorProxy)
Q80505Trigger.defaultAlias = "Q80505Trigger"
local Q805ClientConfig = require("Quest/Client/Q805ClientConfig")

local this
local subIDs = Q805ClientConfig.SubIDs
local npcs = Q805ClientConfig.Npcs
local points = Q805ClientConfig.Points

function Q80505Trigger:OnPostDataPrepare()
    print("Q80505Trigger - OnPostDataPrepare")
    this = self
end

function Q80505Trigger:OnPostComponentPrepare()
    print("Q80505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 805)
end

function Q80505Trigger:TriggerIn()
    print("Q80505Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 80505)
    this:DestroySelf()
end

function Q80505Trigger:PreTriggerIn()
    print("Q80505Trigger - PreTriggerIn")
end

function Q80505Trigger:LightUpTriggerIn()
    print("Q80505Trigger - LightUpTriggerIn")
end

function Q80505Trigger:TriggerOut()
    print("Q80505Trigger - TriggerOut")
end

return Q80505Trigger
