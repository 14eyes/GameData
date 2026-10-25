require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14007Trigger3 = class("Q14007Trigger3", GadgetActorProxy)
Q14007Trigger3.defaultAlias = "Q14007Trigger3"
local Q14007ClientConfig = require("Quest/Client/Q14007ClientConfig")

local this
local subIDs = Q14007ClientConfig.SubIDs
local npcs = Q14007ClientConfig.Npcs
local points = Q14007ClientConfig.Points
local datas = Q14007ClientConfig.Datas

function Q14007Trigger3:OnPostDataPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger3] OnPostDataPrepare")
    this = self
end

function Q14007Trigger3:OnPostComponentPrepare()
    print("[MainId: 14007][Trigger: Q14007Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14007Trigger3:TriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger3] TriggerIn")
    actorMgr:GetActor("14007"):RequestInteraction(npcs.Npc13503Data.alias, "", true)
    this:DestroySelf()
end

function Q14007Trigger3:PreTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger3] PreTriggerIn")
end

function Q14007Trigger3:LightUpTriggerIn()
    print("[MainId: 14007][Trigger: Q14007Trigger3] LightUpTriggerIn")
end

function Q14007Trigger3:TriggerOut()
    print("[MainId: 14007][Trigger: Q14007Trigger3] TriggerOut")
end

return Q14007Trigger3
