require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71812Trigger = class("Q71812Trigger", GadgetActorProxy)
Q71812Trigger.defaultAlias = "Q71812Trigger"
local Q71812ClientConfig = require("Quest/Client/Q71812ClientConfig")

local this
local subIDs = Q71812ClientConfig.SubIDs
local npcs = Q71812ClientConfig.Npcs
local datas = Q71812ClientConfig.Datas

function Q71812Trigger:OnPostDataPrepare()
    print("[MainId: 71812][Trigger: Q71812Trigger] OnPostDataPrepare")
    this = self
end

function Q71812Trigger:OnPostComponentPrepare()
    print("[MainId: 71812][Trigger: Q71812Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q71812Trigger:TriggerIn()
    print("[MainId: 71812][Trigger: Q71812Trigger] TriggerIn")
    actorMgr:GetActor("71812"):NarratorOnlyTask(datas.Reminder02Start, self.TriggerOut, "")
end

function Q71812Trigger:TriggerOut()
    print("[MainId: 71812][Trigger: Q71812Trigger] TriggerOut")
    actorMgr:DestroyEntityActor(datas.Q71812Trigger_.alias, 3, false)
end

return Q71812Trigger
