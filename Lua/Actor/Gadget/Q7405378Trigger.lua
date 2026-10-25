require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405378Trigger = class("Q7405378Trigger", GadgetActorProxy)
Q7405378Trigger.defaultAlias = "Q7405378Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405378Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405378Trigger] OnPostDataPrepare")
    this = self
end

function Q7405378Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405378Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405378Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405378Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405378)
    this:DestroySelf()
end

function Q7405378Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405378Trigger] PreTriggerIn")
end

function Q7405378Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405378Trigger] LightUpTriggerIn")
end

function Q7405378Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405378Trigger] TriggerOut")
end

return Q7405378Trigger
