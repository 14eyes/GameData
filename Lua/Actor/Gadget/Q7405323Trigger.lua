require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7405323Trigger = class("Q7405323Trigger", GadgetActorProxy)
Q7405323Trigger.defaultAlias = "Q7405323Trigger"
local Q74053ClientConfig = require("Quest/Client/Q74053ClientConfig")

local this
local subIDs = Q74053ClientConfig.SubIDs
local npcs = Q74053ClientConfig.Npcs
local points = Q74053ClientConfig.Points
local datas = Q74053ClientConfig.Datas

function Q7405323Trigger:OnPostDataPrepare()
    print("[MainId: 74053][Trigger: Q7405323Trigger] OnPostDataPrepare")
    this = self
end

function Q7405323Trigger:OnPostComponentPrepare()
    print("[MainId: 74053][Trigger: Q7405323Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7405323Trigger:TriggerIn()
    print("[MainId: 74053][Trigger: Q7405323Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7405323)
    this:DestroySelf()
end

function Q7405323Trigger:PreTriggerIn()
    print("[MainId: 74053][Trigger: Q7405323Trigger] PreTriggerIn")
end

function Q7405323Trigger:LightUpTriggerIn()
    print("[MainId: 74053][Trigger: Q7405323Trigger] LightUpTriggerIn")
end

function Q7405323Trigger:TriggerOut()
    print("[MainId: 74053][Trigger: Q7405323Trigger] TriggerOut")
end

return Q7405323Trigger
