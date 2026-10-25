require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011906Talk = class("Q4011906Talk", GadgetActorProxy)
Q4011906Talk.defaultAlias = "Q4011906Talk"
local Q40119ClientConfig = require("Quest/Client/Q40119ClientConfig")

local this
local subIDs = Q40119ClientConfig.SubIDs
local npcs = Q40119ClientConfig.Npcs
local points = Q40119ClientConfig.Points
local datas = Q40119ClientConfig.Datas

function Q4011906Talk:OnPostDataPrepare()
    print("[MainId: 40119][Trigger: Q4011906Talk] OnPostDataPrepare")
    this = self
end

function Q4011906Talk:OnPostComponentPrepare()
    print("[MainId: 40119][Trigger: Q4011906Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011906Talk:TriggerIn()
    print("[MainId: 40119][Trigger: Q4011906Talk] TriggerIn")
end

function Q4011906Talk:PreTriggerIn()
    print("[MainId: 40119][Trigger: Q4011906Talk] PreTriggerIn")
end

function Q4011906Talk:LightUpTriggerIn()
    print("[MainId: 40119][Trigger: Q4011906Talk] LightUpTriggerIn")
    actorMgr:GetActor("40119"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40119"):RequestInteraction(npcs.Npc13247Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q4011906Talk:TriggerOut()
    print("[MainId: 40119][Trigger: Q4011906Talk] TriggerOut")
end

return Q4011906Talk
