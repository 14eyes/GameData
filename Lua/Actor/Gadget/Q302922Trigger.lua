require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302922Trigger = class("Q302922Trigger", GadgetActorProxy)
Q302922Trigger.defaultAlias = "Q302922Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302922Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302922Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302922Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302922)
end

function Q302922Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302922Trigger
