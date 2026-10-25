require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75073Trigger = class("Q75073Trigger", GadgetActorProxy)
Q75073Trigger.defaultAlias = "Q75073Trigger"
local Q75073ClientConfig = require("Quest/Client/Q75073ClientConfig")

local this
local subIDs = Q75073ClientConfig.SubIDs
local npcs = Q75073ClientConfig.Npcs
local datas = Q75073ClientConfig.Datas

function Q75073Trigger:OnPostDataPrepare()
    print("[MainId: 75073][Trigger: Q75073Trigger] OnPostDataPrepare")
    this = self
end

function Q75073Trigger:OnPostComponentPrepare()
    print("[MainId: 75073][Trigger: Q75073Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75073)
end

function Q75073Trigger:TriggerIn()
    print("[MainId: 75073][Trigger: Q75073Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7507303)
    this:DestroySelf()
end

function Q75073Trigger:PreTriggerIn()
    print("[MainId: 75073][Trigger: Q75073Trigger] PreTriggerIn")
end

function Q75073Trigger:LightUpTriggerIn()
    print("[MainId: 75073][Trigger: Q75073Trigger] LightUpTriggerIn")
end

function Q75073Trigger:TriggerOut()
    print("[MainId: 75073][Trigger: Q75073Trigger] TriggerOut")
end

return Q75073Trigger
