require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011501Talk = class("Q4011501Talk", GadgetActorProxy)
Q4011501Talk.defaultAlias = "Q4011501Talk"
local Q40115ClientConfig = require("Quest/Client/Q40115ClientConfig")

local this
local subIDs = Q40115ClientConfig.SubIDs
local npcs = Q40115ClientConfig.Npcs
local points = Q40115ClientConfig.Points

function Q4011501Talk:OnPostDataPrepare()
    print("[MainId: 40115][Trigger: Q4011501Talk] OnPostDataPrepare")
    this = self
end

function Q4011501Talk:OnPostComponentPrepare()
    print("[MainId: 40115][Trigger: Q4011501Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011501Talk:TriggerIn()
    print("[MainId: 40115][Trigger: Q4011501Talk] TriggerIn")
    actorMgr:GetActor("40115"):RequestInteraction(npcs.Npc13247Data.alias)
    this:DestroySelf()
end

function Q4011501Talk:PreTriggerIn()
    print("[MainId: 40115][Trigger: Q4011501Talk] PreTriggerIn")
end

function Q4011501Talk:LightUpTriggerIn()
    print("[MainId: 40115][Trigger: Q4011501Talk] LightUpTriggerIn")
end

function Q4011501Talk:TriggerOut()
    print("[MainId: 40115][Trigger: Q4011501Talk] TriggerOut")
end

return Q4011501Talk
