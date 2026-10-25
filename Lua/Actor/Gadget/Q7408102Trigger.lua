require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408102Trigger = class("Q7408102Trigger", GadgetActorProxy)
Q7408102Trigger.defaultAlias = "Q7408102Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408102Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408102Trigger] OnPostDataPrepare")
    this = self
end

function Q7408102Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408102Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408102Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408102)
    this:DestroySelf()
end

function Q7408102Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408102Trigger] PreTriggerIn")
end

function Q7408102Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408102Trigger] LightUpTriggerIn")
end

function Q7408102Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408102Trigger] TriggerOut")
end

return Q7408102Trigger
