require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011103Trigger = class("Q4011103Trigger", GadgetActorProxy)
Q4011103Trigger.defaultAlias = "Q4011103Trigger"
local Q40111ClientConfig = require("Quest/Client/Q40111ClientConfig")

local this
local subIDs = Q40111ClientConfig.SubIDs
local npcs = Q40111ClientConfig.Npcs
local points = Q40111ClientConfig.Points

function Q4011103Trigger:OnPostDataPrepare()
    print("[MainId: 40111][Trigger: Q4011103Trigger] OnPostDataPrepare")
    this = self
end

function Q4011103Trigger:OnPostComponentPrepare()
    print("[MainId: 40111][Trigger: Q4011103Trigger] OnPostComponentPrepare")
    self:AddNormalPolygonTrigger(1, "Inazuma_IslandLockArea_001", self.TriggerIn)
end

function Q4011103Trigger:TriggerIn()
    print("[MainId: 40111][Trigger: Q4011103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4011103)
    this:DestroySelf()
end

function Q4011103Trigger:PreTriggerIn()
    print("[MainId: 40111][Trigger: Q4011103Trigger] PreTriggerIn")
end

function Q4011103Trigger:LightUpTriggerIn()
    print("[MainId: 40111][Trigger: Q4011103Trigger] LightUpTriggerIn")
end

function Q4011103Trigger:TriggerOut()
    print("[MainId: 40111][Trigger: Q4011103Trigger] TriggerOut")
end

return Q4011103Trigger
