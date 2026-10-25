require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304914Trigger = class("Q7304914Trigger", GadgetActorProxy)
Q7304914Trigger.defaultAlias = "Q7304914Trigger"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304914Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304914Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304914Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304914)
    self:DestroySelf()
end

function Q7304914Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7304914Trigger
