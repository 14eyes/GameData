require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger4 = class("Q74183Trigger4", GadgetActorProxy)
Q74183Trigger4.defaultAlias = "Q74183Trigger4"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger4:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger4] OnPostDataPrepare")
    this = self
end

function Q74183Trigger4:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(80.57287, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger4:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 7418311)
    this:DestroySelf()
end

function Q74183Trigger4:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger4] PreTriggerIn")
end

function Q74183Trigger4:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger4] LightUpTriggerIn")
end

function Q74183Trigger4:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger4] TriggerOut")
end

return Q74183Trigger4
