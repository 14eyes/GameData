require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402638Trigger = class("Q7402638Trigger", GadgetActorProxy)
Q7402638Trigger.defaultAlias = "Q7402638Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402638Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402638Trigger] OnPostDataPrepare")
    this = self
end

function Q7402638Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402638Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402638Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402638Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402638)
    this:DestroySelf()
end

function Q7402638Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402638Trigger] PreTriggerIn")
end

function Q7402638Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402638Trigger] LightUpTriggerIn")
end

function Q7402638Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402638Trigger] TriggerOut")
end

return Q7402638Trigger
