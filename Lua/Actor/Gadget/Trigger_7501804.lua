require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_7501804 = class("Trigger_7501804", GadgetActorProxy)
Trigger_7501804.defaultAlias = "Trigger_7501804"
local Q75018ClientConfig = require("Quest/Client/Q75018ClientConfig")

local this
local subIDs = Q75018ClientConfig.SubIDs
local npcs = Q75018ClientConfig.Npcs
local points = Q75018ClientConfig.Points

function Trigger_7501804:OnPostDataPrepare()
    print("Trigger_7501804 - OnPostDataPrepare")
    this = self
end

function Trigger_7501804:OnPostComponentPrepare()
    print("Trigger_7501804 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75018)
end

function Trigger_7501804:TriggerIn()
    print("Trigger_7501804 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501804)
    this:DestroySelf()
end

function Trigger_7501804:PreTriggerIn()
    print("Trigger_7501804 - PreTriggerIn")
end

function Trigger_7501804:LightUpTriggerIn()
    print("Trigger_7501804 - LightUpTriggerIn")
end

function Trigger_7501804:TriggerOut()
    print("Trigger_7501804 - TriggerOut")
end

return Trigger_7501804
