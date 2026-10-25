require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7215510Trigger = class("WQ7215510Trigger", GadgetActorProxy)
WQ7215510Trigger.defaultAlias = "WQ7215510Trigger"
local Q72155ClientConfig = require("Quest/Client/Q72155ClientConfig")

local mainID = Q72155ClientConfig.MainID
local actorAlias = Q72155ClientConfig.ActorAlias
local subIDs = Q72155ClientConfig.SubIDs
local npcs = Q72155ClientConfig.Npcs
local datas = Q72155ClientConfig.Datas

function WQ7215510Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7215510Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7215510Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7215510)
    self:DestroySelf()
end

function WQ7215510Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7215510Trigger
