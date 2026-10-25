require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025202Trigger = class("Q4025202Trigger", GadgetActorProxy)
Q4025202Trigger.defaultAlias = "Q4025202Trigger"
local Q40252ClientConfig = require("Quest/Client/Q40252ClientConfig")

local this
local subIDs = Q40252ClientConfig.SubIDs
local datas = Q40252ClientConfig.Datas
local npcs = Q40252ClientConfig.Npcs
local points = Q40252ClientConfig.Points

function Q4025202Trigger:OnPostDataPrepare()
    print("Q4025202Trigger - OnPostDataPrepare")
    this = self
end

function Q4025202Trigger:OnPostComponentPrepare()
    print("Q4025202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40252)
end

function Q4025202Trigger:TriggerIn()
    print("Q4025202Trigger - TriggerIn")
    actorMgr:GetActor("40252"):RequestInteraction(npcs.Npc1093.alias, "", true)
    this:DestroySelf()
end

function Q4025202Trigger:PreTriggerIn()
    print("Q4025202Trigger - PreTriggerIn")
end

function Q4025202Trigger:LightUpTriggerIn()
    print("Q4025202Trigger - LightUpTriggerIn")
end

function Q4025202Trigger:TriggerOut()
    print("Q4025202Trigger - TriggerOut")
end

return Q4025202Trigger
