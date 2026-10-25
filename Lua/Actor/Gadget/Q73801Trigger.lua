require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73801Trigger = class("Q73801Trigger", GadgetActorProxy)
Q73801Trigger.defaultAlias = "Q73801Trigger"
local Q73801ClientConfig = require("Quest/Client/Q73801ClientConfig")

local this
local subIDs = Q73801ClientConfig.SubIDs
local npcs = Q73801ClientConfig.Npcs
local datas = Q73801ClientConfig.Datas

function Q73801Trigger:OnPostDataPrepare()
    print("[MainId: 73801][Trigger: Q73801Trigger] OnPostDataPrepare")
    this = self
end

function Q73801Trigger:OnPostComponentPrepare()
    print("[MainId: 73801][Trigger: Q73801Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73801Trigger:TriggerIn()
    print("[MainId: 73801][Trigger: Q73801Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7380106)
    this:DestroySelf()
end

function Q73801Trigger:TriggerOut()
    print("[MainId: 73801][Trigger: Q73801Trigger] TriggerOut")
end

return Q73801Trigger
