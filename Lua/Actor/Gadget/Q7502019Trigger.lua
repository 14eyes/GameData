require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502019Trigger = class("Q7502019Trigger", GadgetActorProxy)
Q7502019Trigger.defaultAlias = "Q7502019Trigger"
local Q75020ClientConfig = require("Quest/Client/Q75020ClientConfig")

local this
local subIDs = Q75020ClientConfig.SubIDs
local npcs = Q75020ClientConfig.Npcs
local points = Q75020ClientConfig.Points
local datas = Q75020ClientConfig.Datas

function Q7502019Trigger:OnPostDataPrepare()
    print("[MainId: 75020][Trigger: Q7502019Trigger] OnPostDataPrepare")
    this = self
end

function Q7502019Trigger:OnPostComponentPrepare()
    print("[MainId: 75020][Trigger: Q7502019Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 30, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75020)
end

function Q7502019Trigger:TriggerIn()
    print("[MainId: 75020][Trigger: Q7502019Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502019)
    this:DestroySelf()
end

function Q7502019Trigger:PreTriggerIn()
    print("[MainId: 75020][Trigger: Q7502019Trigger] PreTriggerIn")
end

function Q7502019Trigger:LightUpTriggerIn()
    print("[MainId: 75020][Trigger: Q7502019Trigger] LightUpTriggerIn")
end

function Q7502019Trigger:TriggerOut()
    print("[MainId: 75020][Trigger: Q7502019Trigger] TriggerOut")
end

return Q7502019Trigger
