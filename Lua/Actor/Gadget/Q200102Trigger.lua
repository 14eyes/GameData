require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200102Trigger = class("Q200102Trigger", GadgetActorProxy)
Q200102Trigger.defaultAlias = "Q200102Trigger"
local Q2001ClientConfig = require("Quest/Client/Q2001ClientConfig")

local this
local subIDs = Q2001ClientConfig.SubIDs
local npcs = Q2001ClientConfig.Npcs
local datas = Q2001ClientConfig.Datas

function Q200102Trigger:OnPostDataPrepare()
    print("[MainId: 2001][Trigger: Q200102Trigger] OnPostDataPrepare")
    this = self
end

function Q200102Trigger:OnPostComponentPrepare()
    print("[MainId: 2001][Trigger: Q200102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q200102Trigger:TriggerIn()
    print("[MainId: 2001][Trigger: Q200102Trigger] TriggerIn")
end

function Q200102Trigger:TriggerOut()
    print("[MainId: 2001][Trigger: Q200102Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 200102)
    this:DestroySelf()
end

return Q200102Trigger
