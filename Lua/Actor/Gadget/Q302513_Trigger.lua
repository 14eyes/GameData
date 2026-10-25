require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302513_Trigger = class("Q302513_Trigger", GadgetActorProxy)
Q302513_Trigger.defaultAlias = "Q302513_Trigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302513_Trigger:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q302513_Trigger] OnPostDataPrepare")
    this = self
end

function Q302513_Trigger:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q302513_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302513_Trigger:TriggerIn()
    print("[MainId: 3025][Trigger: Q302513_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 302513)
    this:DestroySelf()
end

function Q302513_Trigger:TriggerOut()
    print("[MainId: 3025][Trigger: Q302513_Trigger] TriggerOut")
end

return Q302513_Trigger
