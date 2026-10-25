require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325708Trigger = class("Q7325708Trigger", GadgetActorProxy)
Q7325708Trigger.defaultAlias = "Q7325708Trigger"
local Q73257ClientConfig = require("Quest/Client/Q73257ClientConfig")

local this
local subIDs = Q73257ClientConfig.SubIDs
local npcs = Q73257ClientConfig.Npcs
local points = Q73257ClientConfig.Points
local datas = Q73257ClientConfig.Datas

function Q7325708Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325708Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7325708Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325708)
    this:DestroySelf()
end

function Q7325708Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325708Trigger
