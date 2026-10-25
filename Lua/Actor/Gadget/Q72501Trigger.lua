require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72501Trigger = class("Q72501Trigger", GadgetActorProxy)
Q72501Trigger.defaultAlias = "Q72501Trigger"
local Q72501ClientConfig = require("Quest/Client/Q72501ClientConfig")

local subIDs = Q72501ClientConfig.SubIDs
local npcs = Q72501ClientConfig.Npcs
local datas = Q72501ClientConfig.Datas

function Q72501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q72501Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7250101)
    self:DestroySelf()
end

function Q72501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72501Trigger
