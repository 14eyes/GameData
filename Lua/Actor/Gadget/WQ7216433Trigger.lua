require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216433Trigger = class("WQ7216433Trigger", GadgetActorProxy)
WQ7216433Trigger.defaultAlias = "WQ7216433Trigger"
local Q72164ClientConfig = require("Quest/Client/Q72164ClientConfig")

local mainID = Q72164ClientConfig.MainID
local actorAlias = Q72164ClientConfig.ActorAlias
local subIDs = Q72164ClientConfig.SubIDs
local npcs = Q72164ClientConfig.Npcs
local datas = Q72164ClientConfig.Datas

function WQ7216433Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216433Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216433Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216433)
    self:DestroySelf()
end

function WQ7216433Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216433Trigger
