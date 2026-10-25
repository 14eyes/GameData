require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200110Trigger = class("Q200110Trigger", GadgetActorProxy)
Q200110Trigger.defaultAlias = "Q200110Trigger"
local Q2001ClientConfig = require("Quest/Client/Q2001ClientConfig")

local this
local subIDs = Q2001ClientConfig.SubIDs
local npcs = Q2001ClientConfig.Npcs
local datas = Q2001ClientConfig.Datas

function Q200110Trigger:OnPostDataPrepare()
    print("[MainId: 2001][Trigger: Q200110Trigger] OnPostDataPrepare")
    this = self
end

function Q200110Trigger:OnPostComponentPrepare()
    print("[MainId: 2001][Trigger: Q200110Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q200110Trigger:TriggerIn()
    print("[MainId: 2001][Trigger: Q200110Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 200110)
    this:DestroySelf()
end

function Q200110Trigger:TriggerOut()
    print("[MainId: 2001][Trigger: Q200110Trigger] TriggerOut")
end

return Q200110Trigger
