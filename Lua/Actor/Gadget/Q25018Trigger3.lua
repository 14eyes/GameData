require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger3 = class("Q25018Trigger3", GadgetActorProxy)
Q25018Trigger3.defaultAlias = "Q25018Trigger3"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger3:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger3] OnPostDataPrepare")
    this = self
end

function Q25018Trigger3:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger3:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 2501808)
    this:DestroySelf()
end

function Q25018Trigger3:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger3] PreTriggerIn")
end

function Q25018Trigger3:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger3] LightUpTriggerIn")
end

function Q25018Trigger3:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger3] TriggerOut")
end

return Q25018Trigger3
