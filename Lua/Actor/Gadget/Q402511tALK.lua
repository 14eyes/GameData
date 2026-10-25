require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402511tALK = class("Q402511tALK", GadgetActorProxy)
Q402511tALK.defaultAlias = "Q402511tALK"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402511tALK:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402511tALK] OnPostDataPrepare")
    this = self
end

function Q402511tALK:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402511tALK] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402511tALK:TriggerIn()
    print("[MainId: 4025][Trigger: Q402511tALK] TriggerIn")
end

function Q402511tALK:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402511tALK] PreTriggerIn")
end

function Q402511tALK:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402511tALK] LightUpTriggerIn")
    actorMgr:GetActor("4025"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("4025"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402511tALK:TriggerOut()
    print("[MainId: 4025][Trigger: Q402511tALK] TriggerOut")
end

return Q402511tALK
