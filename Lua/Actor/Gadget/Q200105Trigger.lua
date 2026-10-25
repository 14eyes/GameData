require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200105Trigger = class("Q200105Trigger", GadgetActorProxy)
Q200105Trigger.defaultAlias = "Q200105Trigger"
local Q2001ClientConfig = require("Quest/Client/Q2001ClientConfig")

local this
local subIDs = Q2001ClientConfig.SubIDs
local npcs = Q2001ClientConfig.Npcs
local datas = Q2001ClientConfig.Datas

function Q200105Trigger:OnPostDataPrepare()
    print("[MainId: 2001][Trigger: Q200105Trigger] OnPostDataPrepare")
    this = self
end

function Q200105Trigger:OnPostComponentPrepare()
    print("[MainId: 2001][Trigger: Q200105Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q200105Trigger:TriggerIn()
    print("[MainId: 2001][Trigger: Q200105Trigger] TriggerIn")
end

function Q200105Trigger:TriggerOut()
    print("[MainId: 2001][Trigger: Q200105Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 200105)
    this:DestroySelf()
end

return Q200105Trigger
