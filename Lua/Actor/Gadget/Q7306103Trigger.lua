require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306103Trigger = class("Q7306103Trigger", GadgetActorProxy)
Q7306103Trigger.defaultAlias = "Q7306103Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306103Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306103)
    self:DestroySelf()
end

function Q7306103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306103Trigger
