require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215704Trigger = class("WQ7215704Trigger", GadgetActorProxy)
WQ7215704Trigger.defaultAlias = "WQ7215704Trigger"
local Q72157ClientConfig = require("Quest/Client/Q72157ClientConfig")

local mainID = Q72157ClientConfig.MainID
local actorAlias = Q72157ClientConfig.ActorAlias
local subIDs = Q72157ClientConfig.SubIDs
local npcs = Q72157ClientConfig.Npcs
local datas = Q72157ClientConfig.Datas

function WQ7215704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215704Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215704)
    self:DestroySelf()
end

function WQ7215704Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215704Trigger
