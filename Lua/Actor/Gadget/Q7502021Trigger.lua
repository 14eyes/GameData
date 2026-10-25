require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502021Trigger = class("Q7502021Trigger", GadgetActorProxy)
Q7502021Trigger.defaultAlias = "Q7502021Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502021Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502021Trigger] OnPostDataPrepare")
    this = self
end

function Q7502021Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502021Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502021Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502021Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502021)
    this:DestroySelf()
end

function Q7502021Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502021Trigger] PreTriggerIn")
end

function Q7502021Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502021Trigger] LightUpTriggerIn")
end

function Q7502021Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502021Trigger] TriggerOut")
end

return Q7502021Trigger
