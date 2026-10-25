require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408115Trigger = class("Q7408115Trigger", GadgetActorProxy)
Q7408115Trigger.defaultAlias = "Q7408115Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408115Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408115Trigger] OnPostDataPrepare")
    this = self
end

function Q7408115Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408115Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(53.85481, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408115Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408115Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408115)
    this:DestroySelf()
end

function Q7408115Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408115Trigger] PreTriggerIn")
end

function Q7408115Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408115Trigger] LightUpTriggerIn")
end

function Q7408115Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408115Trigger] TriggerOut")
end

return Q7408115Trigger
