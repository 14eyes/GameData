require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306901Trigger = class("Q7306901Trigger", GadgetActorProxy)
Q7306901Trigger.defaultAlias = "Q7306901Trigger"
local Q73069ClientConfig = require("Quest/Client/Q73069ClientConfig")

local subIDs = Q73069ClientConfig.SubIDs
local npcs = Q73069ClientConfig.Npcs
local datas = Q73069ClientConfig.Datas

function Q7306901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306901Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306901)
    self:DestroySelf()
end

function Q7306901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306901Trigger
