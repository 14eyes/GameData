require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032Trigger1 = class("Q13032Trigger1", GadgetActorProxy)
Q13032Trigger1.defaultAlias = "Q13032Trigger1"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032Trigger1:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032Trigger1] OnPostDataPrepare")
    this = self
end

function Q13032Trigger1:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032Trigger1:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger1] TriggerIn")
    actorMgr:GetActor("13032"):RequestInteraction(npcs.Npc13261Data.alias)
    this:DestroySelf()
end

function Q13032Trigger1:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger1] PreTriggerIn")
end

function Q13032Trigger1:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032Trigger1] LightUpTriggerIn")
end

function Q13032Trigger1:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032Trigger1] TriggerOut")
end

return Q13032Trigger1
