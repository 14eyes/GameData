require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19072Trigger = class("Q19072Trigger", GadgetActorProxy)
Q19072Trigger.defaultAlias = "Q19072Trigger"
local Q19072ClientConfig = require("Quest/Client/Q19072ClientConfig")

local this
local subIDs = Q19072ClientConfig.SubIDs
local npcs = Q19072ClientConfig.Npcs
local datas = Q19072ClientConfig.Datas

function Q19072Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19072Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19072Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1907203)
    this:DestroySelf()
end

function Q19072Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19072Trigger
