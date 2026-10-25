require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402635Trigger = class("Q7402635Trigger", GadgetActorProxy)
Q7402635Trigger.defaultAlias = "Q7402635Trigger"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402635Trigger:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402635Trigger] OnPostDataPrepare")
    this = self
end

function Q7402635Trigger:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402635Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402635Trigger:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402635Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7402635)
    this:DestroySelf()
end

function Q7402635Trigger:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402635Trigger] PreTriggerIn")
end

function Q7402635Trigger:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402635Trigger] LightUpTriggerIn")
end

function Q7402635Trigger:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402635Trigger] TriggerOut")
end

return Q7402635Trigger
