require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415306Trigger2 = class("Q7415306Trigger2", GadgetActorProxy)
Q7415306Trigger2.defaultAlias = "Q7415306Trigger2"
local Q74153ClientConfig = require("Quest/Client/Q74153ClientConfig")

local this
local subIDs = Q74153ClientConfig.SubIDs
local npcs = Q74153ClientConfig.Npcs
local datas = Q74153ClientConfig.Datas

function Q7415306Trigger2:OnPostDataPrepare()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] OnPostDataPrepare")
    this = self
end

function Q7415306Trigger2:OnPostComponentPrepare()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7415306Trigger2:TriggerIn()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] TriggerIn")
    local actor = actorMgr:GetActor("74153")
    actor:CreateQuestNpcById(7415305, npcs.PaimonData.id, 1)
    actor:RequestInteraction(npcs.PaimonData.alias, "", true)
    this:DestroySelf()
end

function Q7415306Trigger2:PreTriggerIn()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] PreTriggerIn")
end

function Q7415306Trigger2:LightUpTriggerIn()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] LightUpTriggerIn")
end

function Q7415306Trigger2:TriggerOut()
    print("[MainId: 74153][Trigger: Q7415306Trigger2] TriggerOut")
end

return Q7415306Trigger2
