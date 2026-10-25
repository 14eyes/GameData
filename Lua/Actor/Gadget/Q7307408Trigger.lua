require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7307408Trigger = class("Q7307408Trigger", GadgetActorProxy)
Q7307408Trigger.defaultAlias = "Q7307408Trigger"
local Q73074ClientConfig = require("Quest/Client/Q73074ClientConfig")

local subIDs = Q73074ClientConfig.SubIDs
local npcs = Q73074ClientConfig.Npcs
local datas = Q73074ClientConfig.Datas

function Q7307408Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7307408Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7307408Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7307408)
    self:DestroySelf()
end

function Q7307408Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7307408Trigger
