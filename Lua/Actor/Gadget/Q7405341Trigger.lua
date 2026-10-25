require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405341Trigger = class("Q7405341Trigger", GadgetActorProxy)
Q7405341Trigger.defaultAlias = "Q7405341Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405341Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405341Trigger] OnPostDataPrepare")
    this = self
end

function Q7405341Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405341Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(90, 90, 30, true, {x = -0.87, y = 10.9, z = -31.79}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405341Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405341Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405341)
    this:DestroySelf()
end

function Q7405341Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405341Trigger] PreTriggerIn")
end

function Q7405341Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405341Trigger] LightUpTriggerIn")
end

function Q7405341Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405341Trigger] TriggerOut")
end

return Q7405341Trigger
