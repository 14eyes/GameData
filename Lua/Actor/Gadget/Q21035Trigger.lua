require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21035Trigger = class("Q21035Trigger", GadgetActorProxy)
Q21035Trigger.defaultAlias = "Q21035Trigger"
local Q21035ClientConfig = require("Quest/Client/Q21035ClientConfig")

local this
local subIDs = Q21035ClientConfig.SubIDs
local npcs = Q21035ClientConfig.Npcs
local datas = Q21035ClientConfig.Datas

function Q21035Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21035Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q21035Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21035"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q21035Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21035Trigger
