require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300117Trigger = class("Q1300117Trigger", GadgetActorProxy)
Q1300117Trigger.defaultAlias = "Q1300117Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300117Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300117Trigger] OnPostDataPrepare")
    this = self
end

function Q1300117Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300117Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(23, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300117Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300117Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1300117)
    this:DestroySelf()
end

function Q1300117Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300117Trigger] TriggerOut")
end

return Q1300117Trigger
