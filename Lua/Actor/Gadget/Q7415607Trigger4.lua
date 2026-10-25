require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415607Trigger4 = class("Q7415607Trigger4", GadgetActorProxy)
Q7415607Trigger4.defaultAlias = "Q7415607Trigger4"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q7415607Trigger4:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] OnPostDataPrepare")
    this = self
end

function Q7415607Trigger4:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415607Trigger4:TriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 7415607)
    this:DestroySelf()
end

function Q7415607Trigger4:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] PreTriggerIn")
end

function Q7415607Trigger4:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] LightUpTriggerIn")
end

function Q7415607Trigger4:TriggerOut()
    print("[MainId: 74156][Trigger: Q7415607Trigger4] TriggerOut")
end

return Q7415607Trigger4
