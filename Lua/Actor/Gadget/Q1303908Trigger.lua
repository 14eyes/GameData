require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1303908Trigger = class("Q1303908Trigger", GadgetActorProxy)
Q1303908Trigger.defaultAlias = "Q1303908Trigger"
local Q13039ClientConfig = require("Quest/Client/Q13039ClientConfig")

local this
local subIDs = Q13039ClientConfig.SubIDs
local npcs = Q13039ClientConfig.Npcs
local points = Q13039ClientConfig.Points
local datas = Q13039ClientConfig.Datas

function Q1303908Trigger:OnPostDataPrepare()
    print("[MainId: 13039][Trigger: Q1303908Trigger] OnPostDataPrepare")
    this = self
end

function Q1303908Trigger:OnPostComponentPrepare()
    print("[MainId: 13039][Trigger: Q1303908Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 13039)
end

function Q1303908Trigger:TriggerIn()
    print("[MainId: 13039][Trigger: Q1303908Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303908)
    this:DestroySelf()
end

function Q1303908Trigger:PreTriggerIn()
    print("[MainId: 13039][Trigger: Q1303908Trigger] PreTriggerIn")
end

function Q1303908Trigger:LightUpTriggerIn()
    print("[MainId: 13039][Trigger: Q1303908Trigger] LightUpTriggerIn")
end

function Q1303908Trigger:TriggerOut()
    print("[MainId: 13039][Trigger: Q1303908Trigger] TriggerOut")
end

return Q1303908Trigger
