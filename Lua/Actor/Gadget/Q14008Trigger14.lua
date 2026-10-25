require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger14 = class("Q14008Trigger14", GadgetActorProxy)
Q14008Trigger14.defaultAlias = "Q14008Trigger14"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger14:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger14] OnPostDataPrepare")
    this = self
end

function Q14008Trigger14:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger14] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger14:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger14] TriggerIn")
    actorMgr:GetActor("14008"):RequestInteraction(npcs.Npc1075Data.alias, "", true)
    this:DestroySelf()
end

function Q14008Trigger14:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger14] PreTriggerIn")
end

function Q14008Trigger14:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger14] LightUpTriggerIn")
end

function Q14008Trigger14:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger14] TriggerOut")
end

return Q14008Trigger14
