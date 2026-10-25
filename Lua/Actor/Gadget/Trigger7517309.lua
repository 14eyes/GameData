require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7517309 = class("Trigger7517309", GadgetActorProxy)
Trigger7517309.defaultAlias = "Trigger7517309"
local Q75173ClientConfig = require("Quest/Client/Q75173ClientConfig")

local this
local subIDs = Q75173ClientConfig.SubIDs
local npcs = Q75173ClientConfig.Npcs
local points = Q75173ClientConfig.Points

function Trigger7517309:OnPostDataPrepare()
    print("Trigger7517309 - OnPostDataPrepare")
    this = self
end

function Trigger7517309:OnPostComponentPrepare()
    print("Trigger7517309 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75173)
end

function Trigger7517309:TriggerIn()
    print("Trigger7517309 - TriggerIn")
    actorUtils.FinishQuestID(false, 7517309)
    this:DestroySelf()
end

function Trigger7517309:PreTriggerIn()
    print("Trigger7517309 - PreTriggerIn")
end

function Trigger7517309:LightUpTriggerIn()
    print("Trigger7517309 - LightUpTriggerIn")
end

function Trigger7517309:TriggerOut()
    print("Trigger7517309 - TriggerOut")
end

return Trigger7517309
