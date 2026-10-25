require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger1 = class("Q74183Trigger1", GadgetActorProxy)
Q74183Trigger1.defaultAlias = "Q74183Trigger1"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger1:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger1] OnPostDataPrepare")
    this = self
end

function Q74183Trigger1:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger1:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7418302)
    this:DestroySelf()
end

function Q74183Trigger1:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger1] PreTriggerIn")
end

function Q74183Trigger1:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger1] LightUpTriggerIn")
end

function Q74183Trigger1:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger1] TriggerOut")
end

return Q74183Trigger1
