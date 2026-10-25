require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_7501801 = class("Trigger_7501801", GadgetActorProxy)
Trigger_7501801.defaultAlias = "Trigger_7501801"
local Q75018ClientConfig = require("Quest/Client/Q75018ClientConfig")

local this
local subIDs = Q75018ClientConfig.SubIDs
local npcs = Q75018ClientConfig.Npcs
local points = Q75018ClientConfig.Points

function Trigger_7501801:OnPostDataPrepare()
    print("Trigger_7501801 - OnPostDataPrepare")
    this = self
end

function Trigger_7501801:OnPostComponentPrepare()
    print("Trigger_7501801 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75018)
end

function Trigger_7501801:TriggerIn()
    print("Trigger_7501801 - TriggerIn")
    actorMgr:GetActor("75018"):RequestInteraction(npcs.Npc21634.alias, "", true)
end

function Trigger_7501801:PreTriggerIn()
    print("Trigger_7501801 - PreTriggerIn")
end

function Trigger_7501801:LightUpTriggerIn()
    print("Trigger_7501801 - LightUpTriggerIn")
end

function Trigger_7501801:TriggerOut()
    print("Trigger_7501801 - TriggerOut")
end

return Trigger_7501801
