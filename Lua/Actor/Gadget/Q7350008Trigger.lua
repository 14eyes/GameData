require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350008Trigger = class("Q7350008Trigger", GadgetActorProxy)
Q7350008Trigger.defaultAlias = "Q7350008Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350008Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350008Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350008Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7350008)
    self:DestroySelf()
end

function Q7350008Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350008Trigger
