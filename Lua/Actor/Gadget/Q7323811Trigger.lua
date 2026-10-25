require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323811Trigger = class("Q7323811Trigger", GadgetActorProxy)
Q7323811Trigger.defaultAlias = "Q7323811Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local datas = Q73238ClientConfig.Datas

function Q7323811Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7323811Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323811Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323811)
    self:DestroySelf()
end

function Q7323811Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323811Trigger
