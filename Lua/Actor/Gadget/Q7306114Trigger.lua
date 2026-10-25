require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306114Trigger = class("Q7306114Trigger", GadgetActorProxy)
Q7306114Trigger.defaultAlias = "Q7306114Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306114Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306114)
    self:DestroySelf()
end

function Q7306114Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306114Trigger
