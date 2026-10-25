require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508702finish = class("Trigger7508702finish", GadgetActorProxy)
Trigger7508702finish.defaultAlias = "Trigger7508702finish"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508702finish:OnPostDataPrepare()
    print("Trigger7508702finish - OnPostDataPrepare")
    this = self
end

function Trigger7508702finish:OnPostComponentPrepare()
    print("Trigger7508702finish - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508702finish:TriggerIn()
    print("Trigger7508702finish - TriggerIn")
    actorUtils.FinishQuestID(false, 7508702)
    this:DestroySelf()
end

function Trigger7508702finish:PreTriggerIn()
    print("Trigger7508702finish - PreTriggerIn")
end

function Trigger7508702finish:LightUpTriggerIn()
    print("Trigger7508702finish - LightUpTriggerIn")
end

function Trigger7508702finish:TriggerOut()
    print("Trigger7508702finish - TriggerOut")
end

return Trigger7508702finish
