require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WQ7216406Trigger = class("WQ7216406Trigger", GadgetActorProxy)
WQ7216406Trigger.defaultAlias = "WQ7216406Trigger"
local Q72164ClientConfig = require("Quest/Client/Q72164ClientConfig")

local mainID = Q72164ClientConfig.MainID
local actorAlias = Q72164ClientConfig.ActorAlias
local subIDs = Q72164ClientConfig.SubIDs
local npcs = Q72164ClientConfig.Npcs
local datas = Q72164ClientConfig.Datas

function WQ7216406Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function WQ7216406Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function WQ7216406Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7216406)
    self:DestroySelf()
end

function WQ7216406Trigger:TriggerOut()
    print("TriggerOut")
end

return WQ7216406Trigger
