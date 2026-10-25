require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger = class("Trigger", GadgetActorProxy)
Trigger.defaultAlias = "Trigger"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger:OnPostDataPrepare()
    print("Trigger - OnPostDataPrepare")
    this = self
end

function Trigger:OnPostComponentPrepare()
    print("Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger:TriggerIn()
    print("Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7508706)
    this:DestroySelf()
end

function Trigger:PreTriggerIn()
    print("Trigger - PreTriggerIn")
end

function Trigger:LightUpTriggerIn()
    print("Trigger - LightUpTriggerIn")
end

function Trigger:TriggerOut()
    print("Trigger - TriggerOut")
end

return Trigger
