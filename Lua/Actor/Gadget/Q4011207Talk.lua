require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011207Talk = class("Q4011207Talk", GadgetActorProxy)
Q4011207Talk.defaultAlias = "Q4011207Talk"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011207Talk:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011207Talk] OnPostDataPrepare")
    this = self
end

function Q4011207Talk:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011207Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011207Talk:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Talk] TriggerIn")
    actorMgr:GetActor("40112"):RequestInteraction(npcs.Npc10090Data.alias)
    this:DestroySelf()
end

function Q4011207Talk:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Talk] PreTriggerIn")
end

function Q4011207Talk:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207Talk] LightUpTriggerIn")
end

function Q4011207Talk:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011207Talk] TriggerOut")
end

return Q4011207Talk
