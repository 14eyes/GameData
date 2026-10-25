require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508704 = class("Trigger7508704", GadgetActorProxy)
Trigger7508704.defaultAlias = "Trigger7508704"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508704:OnPostDataPrepare()
    print("Trigger7508704 - OnPostDataPrepare")
    this = self
end

function Trigger7508704:OnPostComponentPrepare()
    print("Trigger7508704 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508704:TriggerIn()
    print("Trigger7508704 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508704)
    this:DestroySelf()
end

function Trigger7508704:PreTriggerIn()
    print("Trigger7508704 - PreTriggerIn")
end

function Trigger7508704:LightUpTriggerIn()
    print("Trigger7508704 - LightUpTriggerIn")
end

function Trigger7508704:TriggerOut()
    print("Trigger7508704 - TriggerOut")
end

return Trigger7508704
