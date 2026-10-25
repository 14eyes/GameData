require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402411Talk = class("Q402411Talk", GadgetActorProxy)
Q402411Talk.defaultAlias = "Q402411Talk"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402411Talk:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402411Talk] OnPostDataPrepare")
    this = self
end

function Q402411Talk:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402411Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402411Talk:TriggerIn()
    print("[MainId: 4024][Trigger: Q402411Talk] TriggerIn")
end

function Q402411Talk:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402411Talk] PreTriggerIn")
end

function Q402411Talk:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402411Talk] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("4024"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402411Talk:TriggerOut()
    print("[MainId: 4024][Trigger: Q402411Talk] TriggerOut")
end

return Q402411Talk
