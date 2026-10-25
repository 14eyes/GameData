require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13006Trigger = class("Q13006Trigger", GadgetActorProxy)
Q13006Trigger.defaultAlias = "Q13006Trigger"
local Q13006ClientConfig = require("Quest/Client/Q13006ClientConfig")

local this
local subIDs = Q13006ClientConfig.SubIDs
local npcs = Q13006ClientConfig.Npcs
local datas = Q13006ClientConfig.Datas

function Q13006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13006Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1300601)
    this:DestroySelf()
end

function Q13006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q13006Trigger
