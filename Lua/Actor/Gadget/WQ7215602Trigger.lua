require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215602Trigger = class("WQ7215602Trigger", GadgetActorProxy)
WQ7215602Trigger.defaultAlias = "WQ7215602Trigger"
local Q72156ClientConfig = require("Quest/Client/Q72156ClientConfig")

local mainID = Q72156ClientConfig.MainID
local actorAlias = Q72156ClientConfig.ActorAlias
local subIDs = Q72156ClientConfig.SubIDs
local npcs = Q72156ClientConfig.Npcs
local datas = Q72156ClientConfig.Datas

function WQ7215602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215602)
    self:DestroySelf()
end

function WQ7215602Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215602Trigger
