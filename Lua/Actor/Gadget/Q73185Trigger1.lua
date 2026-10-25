require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73185Trigger1 = class("Q73185Trigger1", GadgetActorProxy)
Q73185Trigger1.defaultAlias = "Q73185Trigger1"
local Q73185ClientConfig = require("Quest/Client/Q73185ClientConfig")

local subIDs = Q73185ClientConfig.SubIDs
local npcs = Q73185ClientConfig.Npcs
local datas = Q73185ClientConfig.Datas

function Q73185Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73185Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73185Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318506)
    self:DestroySelf()
end

function Q73185Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73185Trigger1
