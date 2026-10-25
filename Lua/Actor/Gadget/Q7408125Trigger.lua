require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408125Trigger = class("Q7408125Trigger", GadgetActorProxy)
Q7408125Trigger.defaultAlias = "Q7408125Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408125Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408125Trigger] OnPostDataPrepare")
    this = self
end

function Q7408125Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408125Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20.47081, 22.78312, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408125Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408125Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408125)
    this:DestroySelf()
end

function Q7408125Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408125Trigger] PreTriggerIn")
end

function Q7408125Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408125Trigger] LightUpTriggerIn")
end

function Q7408125Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408125Trigger] TriggerOut")
end

return Q7408125Trigger
