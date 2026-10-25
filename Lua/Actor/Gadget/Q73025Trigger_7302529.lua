require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73025Trigger_7302529 = class("Q73025Trigger_7302529", GadgetActorProxy)
Q73025Trigger_7302529.defaultAlias = "Q73025Trigger_7302529"
local Q73025ClientConfig = require("Quest/Client/Q73025ClientConfig")

local this
local subIDs = Q73025ClientConfig.SubIDs
local npcs = Q73025ClientConfig.Npcs
local gadgets = Q73025ClientConfig.Gadgets
local datas = Q73025ClientConfig.Datas

function Q73025Trigger_7302529:OnPostDataPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302529] OnPostDataPrepare")
    this = self
end

function Q73025Trigger_7302529:OnPostComponentPrepare()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302529] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73025Trigger_7302529:TriggerIn()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302529] TriggerIn")
    actorUtils.FinishQuestID(false, 7302529)
    this:DestroySelf()
end

function Q73025Trigger_7302529:TriggerOut()
    print("[MainId: 73025][Trigger: Q73025Trigger_7302529] TriggerOut")
end

return Q73025Trigger_7302529
