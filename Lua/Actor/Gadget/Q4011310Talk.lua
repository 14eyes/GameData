require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011310Talk = class("Q4011310Talk", GadgetActorProxy)
Q4011310Talk.defaultAlias = "Q4011310Talk"
local Q40113ClientConfig = require("Quest/Client/Q40113ClientConfig")

local this
local subIDs = Q40113ClientConfig.SubIDs
local npcs = Q40113ClientConfig.Npcs
local points = Q40113ClientConfig.Points
local datas = Q40113ClientConfig.Datas

function Q4011310Talk:OnPostDataPrepare()
    print("[MainId: 40113][Trigger: Q4011310Talk] OnPostDataPrepare")
    this = self
end

function Q4011310Talk:OnPostComponentPrepare()
    print("[MainId: 40113][Trigger: Q4011310Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011310Talk:TriggerIn()
    print("[MainId: 40113][Trigger: Q4011310Talk] TriggerIn")
    actorMgr:GetActor("40113"):RequestInteraction(npcs.Npc13247Data.alias)
    this:DestroySelf()
end

function Q4011310Talk:PreTriggerIn()
    print("[MainId: 40113][Trigger: Q4011310Talk] PreTriggerIn")
end

function Q4011310Talk:LightUpTriggerIn()
    print("[MainId: 40113][Trigger: Q4011310Talk] LightUpTriggerIn")
end

function Q4011310Talk:TriggerOut()
    print("[MainId: 40113][Trigger: Q4011310Talk] TriggerOut")
end

return Q4011310Talk
