require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110733paimonTrigger = class("Q7110733paimonTrigger", GadgetActorProxy)
Q7110733paimonTrigger.defaultAlias = "Q7110733paimonTrigger"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110733paimonTrigger:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] OnPostDataPrepare")
    this = self
end

function Q7110733paimonTrigger:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110733paimonTrigger:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] TriggerIn")
    local actor = actorMgr:GetActor("71107")
    actor:CreateQuestNpcById(7110733, npcs.PaimonData.id, 0)
    actor:RequestInteraction(npcs.PaimonData.alias, "3", true)
    this:DestroySelf()
end

function Q7110733paimonTrigger:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] PreTriggerIn")
end

function Q7110733paimonTrigger:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] LightUpTriggerIn")
end

function Q7110733paimonTrigger:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110733paimonTrigger] TriggerOut")
end

return Q7110733paimonTrigger
