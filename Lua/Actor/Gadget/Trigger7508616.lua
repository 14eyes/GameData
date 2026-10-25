require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508616 = class("Trigger7508616", GadgetActorProxy)
Trigger7508616.defaultAlias = "Trigger7508616"
local Q75086ClientConfig = require("Quest/Client/Q75086ClientConfig")

local this
local subIDs = Q75086ClientConfig.SubIDs
local npcs = Q75086ClientConfig.Npcs
local points = Q75086ClientConfig.Points

function Trigger7508616:OnPostDataPrepare()
    print("Trigger7508616 - OnPostDataPrepare")
    this = self
end

function Trigger7508616:OnPostComponentPrepare()
    print("Trigger7508616 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75086)
end

function Trigger7508616:TriggerIn()
    print("Trigger7508616 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508616)
    this:DestroySelf()
end

function Trigger7508616:PreTriggerIn()
    print("Trigger7508616 - PreTriggerIn")
end

function Trigger7508616:LightUpTriggerIn()
    print("Trigger7508616 - LightUpTriggerIn")
end

function Trigger7508616:TriggerOut()
    print("Trigger7508616 - TriggerOut")
end

return Trigger7508616
