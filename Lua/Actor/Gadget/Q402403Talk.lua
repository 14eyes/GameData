require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402403Talk = class("Q402403Talk", GadgetActorProxy)
Q402403Talk.defaultAlias = "Q402403Talk"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402403Talk:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402403Talk] OnPostDataPrepare")
    this = self
end

function Q402403Talk:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402403Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402403Talk:TriggerIn()
    print("[MainId: 4024][Trigger: Q402403Talk] TriggerIn")
end

function Q402403Talk:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402403Talk] PreTriggerIn")
end

function Q402403Talk:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402403Talk] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("4024"):RequestInteraction(npcs.Npc13316Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402403Talk:TriggerOut()
    print("[MainId: 4024][Trigger: Q402403Talk] TriggerOut")
end

return Q402403Talk
