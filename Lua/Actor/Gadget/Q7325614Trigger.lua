require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325614Trigger = class("Q7325614Trigger", GadgetActorProxy)
Q7325614Trigger.defaultAlias = "Q7325614Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325614Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325614Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325614Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325614)
    this:DestroySelf()
end

function Q7325614Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325614Trigger
