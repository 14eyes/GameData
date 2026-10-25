require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323833Trigger = class("Q7323833Trigger", GadgetActorProxy)
Q7323833Trigger.defaultAlias = "Q7323833Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323833Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323833Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323833Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323833)
    this:DestroySelf()
end

function Q7323833Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323833Trigger
