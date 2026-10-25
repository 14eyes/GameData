require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408127Trigger = class("Q7408127Trigger", GadgetActorProxy)
Q7408127Trigger.defaultAlias = "Q7408127Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408127Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408127Trigger] OnPostDataPrepare")
    this = self
end

function Q7408127Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408127Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(40, 12.29, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408127Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408127Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408127)
    this:DestroySelf()
end

function Q7408127Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408127Trigger] PreTriggerIn")
end

function Q7408127Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408127Trigger] LightUpTriggerIn")
end

function Q7408127Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408127Trigger] TriggerOut")
end

return Q7408127Trigger
