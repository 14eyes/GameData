require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011608Talk = class("Q4011608Talk", GadgetActorProxy)
Q4011608Talk.defaultAlias = "Q4011608Talk"
local Q40116ClientConfig = require("Quest/Client/Q40116ClientConfig")

local this
local subIDs = Q40116ClientConfig.SubIDs
local npcs = Q40116ClientConfig.Npcs
local points = Q40116ClientConfig.Points
local datas = Q40116ClientConfig.Datas

function Q4011608Talk:OnPostDataPrepare()
    print("[MainId: 40116][Trigger: Q4011608Talk] OnPostDataPrepare")
    this = self
end

function Q4011608Talk:OnPostComponentPrepare()
    print("[MainId: 40116][Trigger: Q4011608Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011608Talk:TriggerIn()
    print("[MainId: 40116][Trigger: Q4011608Talk] TriggerIn")
    actorMgr:GetActor("40116"):RequestInteraction(npcs.Npc13252Data.alias)
    this:DestroySelf()
end

function Q4011608Talk:PreTriggerIn()
    print("[MainId: 40116][Trigger: Q4011608Talk] PreTriggerIn")
end

function Q4011608Talk:LightUpTriggerIn()
    print("[MainId: 40116][Trigger: Q4011608Talk] LightUpTriggerIn")
end

function Q4011608Talk:TriggerOut()
    print("[MainId: 40116][Trigger: Q4011608Talk] TriggerOut")
end

return Q4011608Talk
