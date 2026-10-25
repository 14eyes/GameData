require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011611Talk = class("Q4011611Talk", GadgetActorProxy)
Q4011611Talk.defaultAlias = "Q4011611Talk"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011611Talk:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011611Talk] OnPostDataPrepare")
    this = self
end

function Q4011611Talk:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011611Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011611Talk:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011611Talk] TriggerIn")
    actorMgr:GetActor("40116"):RequestInteraction(npcs.Npc13252Data.alias)
    this:DestroySelf()
end

function Q4011611Talk:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011611Talk] PreTriggerIn")
end

function Q4011611Talk:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011611Talk] LightUpTriggerIn")
end

function Q4011611Talk:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011611Talk] TriggerOut")
end

return Q4011611Talk
