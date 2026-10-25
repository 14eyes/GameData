require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302920Trigger = class("Q302920Trigger", GadgetActorProxy)
Q302920Trigger.defaultAlias = "Q302920Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302920Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302920Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302920Trigger:TriggerIn()
    print("TriggerIn")
end

function Q302920Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 302920)
    this:DestroySelf()
end

return Q302920Trigger
