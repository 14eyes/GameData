require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011412Talk = class("Q4011412Talk", GadgetActorProxy)
Q4011412Talk.defaultAlias = "Q4011412Talk"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011412Talk:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011412Talk] OnPostDataPrepare")
    this = self
end

function Q4011412Talk:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011412Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011412Talk:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011412Talk] TriggerIn")
    actorMgr:GetActor("40114"):RequestInteraction(npcs.Npc13250Data.alias)
    this:DestroySelf()
end

function Q4011412Talk:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011412Talk] PreTriggerIn")
end

function Q4011412Talk:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011412Talk] LightUpTriggerIn")
end

function Q4011412Talk:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011412Talk] TriggerOut")
end

return Q4011412Talk
