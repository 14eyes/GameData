require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215702Trigger = class("WQ7215702Trigger", GadgetActorProxy)
WQ7215702Trigger.defaultAlias = "WQ7215702Trigger"
local Q72157ClientConfig = require("Quest/Client/Q72157ClientConfig")

local mainID = Q72157ClientConfig.MainID
local actorAlias = Q72157ClientConfig.ActorAlias
local subIDs = Q72157ClientConfig.SubIDs
local npcs = Q72157ClientConfig.Npcs
local datas = Q72157ClientConfig.Datas

function WQ7215702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215702Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215702)
    self:DestroySelf()
end

function WQ7215702Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215702Trigger
