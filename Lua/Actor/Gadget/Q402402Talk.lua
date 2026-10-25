require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402402Talk = class("Q402402Talk", GadgetActorProxy)
Q402402Talk.defaultAlias = "Q402402Talk"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402402Talk:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402402Talk] OnPostDataPrepare")
    this = self
end

function Q402402Talk:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402402Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402402Talk:TriggerIn()
    print("[MainId: 4024][Trigger: Q402402Talk] TriggerIn")
end

function Q402402Talk:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402402Talk] PreTriggerIn")
end

function Q402402Talk:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402402Talk] LightUpTriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("4024"):RequestInteraction(npcs.Npc1076Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402402Talk:TriggerOut()
    print("[MainId: 4024][Trigger: Q402402Talk] TriggerOut")
end

return Q402402Talk
