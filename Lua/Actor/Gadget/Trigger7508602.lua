require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508602 = class("Trigger7508602", GadgetActorProxy)
Trigger7508602.defaultAlias = "Trigger7508602"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508602:OnPostDataPrepare()
    print("Trigger7508602 - OnPostDataPrepare")
    this = self
end

function Trigger7508602:OnPostComponentPrepare()
    print("Trigger7508602 - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508602:TriggerIn()
    print("Trigger7508602 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508602)
    this:DestroySelf()
end

function Trigger7508602:PreTriggerIn()
    print("Trigger7508602 - PreTriggerIn")
end

function Trigger7508602:LightUpTriggerIn()
    print("Trigger7508602 - LightUpTriggerIn")
end

function Trigger7508602:TriggerOut()
    print("Trigger7508602 - TriggerOut")
end

return Trigger7508602
