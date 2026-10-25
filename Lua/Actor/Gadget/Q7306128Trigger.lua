require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306128Trigger = class("Q7306128Trigger", GadgetActorProxy)
Q7306128Trigger.defaultAlias = "Q7306128Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306128Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306128Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306128Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306128)
    self:DestroySelf()
end

function Q7306128Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306128Trigger
