require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74500Trigger = class("Q74500Trigger", GadgetActorProxy)
Q74500Trigger.defaultAlias = "Q74500Trigger"
local Q74500ClientConfig = require("Quest/Client/Q74500ClientConfig")

local this
local subIDs = Q74500ClientConfig.SubIDs
local npcs = Q74500ClientConfig.Npcs
local points = Q74500ClientConfig.Points
local datas = Q74500ClientConfig.Datas

function Q74500Trigger:OnPostDataPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger] OnPostDataPrepare")
    this = self
end

function Q74500Trigger:OnPostComponentPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74500Trigger:TriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7450001)
    this:DestroySelf()
end

function Q74500Trigger:PreTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger] PreTriggerIn")
end

function Q74500Trigger:LightUpTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger] LightUpTriggerIn")
end

function Q74500Trigger:TriggerOut()
    print("[MainId: 74500][Trigger: Q74500Trigger] TriggerOut")
end

return Q74500Trigger
