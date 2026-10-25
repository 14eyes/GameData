require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502022Trigger = class("Q7502022Trigger", GadgetActorProxy)
Q7502022Trigger.defaultAlias = "Q7502022Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502022Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502022Trigger] OnPostDataPrepare")
    this = self
end

function Q7502022Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502022Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 10, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502022Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502022Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502022)
    this:DestroySelf()
end

function Q7502022Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502022Trigger] PreTriggerIn")
end

function Q7502022Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502022Trigger] LightUpTriggerIn")
end

function Q7502022Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502022Trigger] TriggerOut")
end

return Q7502022Trigger
