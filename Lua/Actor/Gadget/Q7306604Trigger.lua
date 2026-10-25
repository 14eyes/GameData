require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306604Trigger = class("Q7306604Trigger", GadgetActorProxy)
Q7306604Trigger.defaultAlias = "Q7306604Trigger"
local Q73066ClientConfig = require("Quest/Client/Q73066ClientConfig")

local subIDs = Q73066ClientConfig.SubIDs
local npcs = Q73066ClientConfig.Npcs
local datas = Q73066ClientConfig.Datas

function Q7306604Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306604Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306604Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306604)
    self:DestroySelf()
end

function Q7306604Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306604Trigger
