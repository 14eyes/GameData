require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74183Trigger3 = class("Q74183Trigger3", GadgetActorProxy)
Q74183Trigger3.defaultAlias = "Q74183Trigger3"
local Q74183ClientConfig = require("Quest/Client/Q74183ClientConfig")

local this
local subIDs = Q74183ClientConfig.SubIDs
local npcs = Q74183ClientConfig.Npcs
local points = Q74183ClientConfig.Points
local datas = Q74183ClientConfig.Datas

function Q74183Trigger3:OnPostDataPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger3] OnPostDataPrepare")
    this = self
end

function Q74183Trigger3:OnPostComponentPrepare()
    print("[MainId: 74183][Trigger: Q74183Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74183Trigger3:TriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 7418313)
    this:DestroySelf()
end

function Q74183Trigger3:PreTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger3] PreTriggerIn")
end

function Q74183Trigger3:LightUpTriggerIn()
    print("[MainId: 74183][Trigger: Q74183Trigger3] LightUpTriggerIn")
end

function Q74183Trigger3:TriggerOut()
    print("[MainId: 74183][Trigger: Q74183Trigger3] TriggerOut")
end

return Q74183Trigger3
