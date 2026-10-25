require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508702finish1 = class("Trigger7508702finish1", GadgetActorProxy)
Trigger7508702finish1.defaultAlias = "Trigger7508702finish1"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508702finish1:OnPostDataPrepare()
    print("Trigger7508702finish1 - OnPostDataPrepare")
    this = self
end

function Trigger7508702finish1:OnPostComponentPrepare()
    print("Trigger7508702finish1 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508702finish1:TriggerIn()
    print("Trigger7508702finish1 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508702)
    this:DestroySelf()
end

function Trigger7508702finish1:PreTriggerIn()
    print("Trigger7508702finish1 - PreTriggerIn")
end

function Trigger7508702finish1:LightUpTriggerIn()
    print("Trigger7508702finish1 - LightUpTriggerIn")
end

function Trigger7508702finish1:TriggerOut()
    print("Trigger7508702finish1 - TriggerOut")
end

return Trigger7508702finish1
