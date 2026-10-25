require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40092Trigger = class("Q40092Trigger", GadgetActorProxy)
Q40092Trigger.defaultAlias = "Q40092Trigger"
local Q40092ClientConfig = require("Quest/Client/Q40092ClientConfig")

local this
local subIDs = Q40092ClientConfig.SubIDs
local npcs = Q40092ClientConfig.Npcs
local gadgets = Q40092ClientConfig.Gadgets
local datas = Q40092ClientConfig.Datas

function Q40092Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40092Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40092Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 4009218)
    actorMgr:GetActor("40092"):ClearNarratorTask()
end

function Q40092Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40092Trigger
