require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016Trigger = class("Q73016Trigger", GadgetActorProxy)
Q73016Trigger.defaultAlias = "Q73016Trigger"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016Trigger:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016Trigger] OnPostDataPrepare")
    this = self
end

function Q73016Trigger:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016Trigger:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7301601)
    this:DestroySelf()
end

function Q73016Trigger:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016Trigger] TriggerOut")
end

return Q73016Trigger
