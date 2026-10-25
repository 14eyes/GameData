require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14026Trigger = class("Q14026Trigger", GadgetActorProxy)
Q14026Trigger.defaultAlias = "Q14026Trigger"
local Q14026ClientConfig = require("Quest/Client/Q14026ClientConfig")

local this
local subIDs = Q14026ClientConfig.SubIDs
local npcs = Q14026ClientConfig.Npcs
local points = Q14026ClientConfig.Points
local datas = Q14026ClientConfig.Datas

function Q14026Trigger:OnPostDataPrepare()
    print("[MainId: 14026][Trigger: Q14026Trigger] OnPostDataPrepare")
    this = self
end

function Q14026Trigger:OnPostComponentPrepare()
    print("[MainId: 14026][Trigger: Q14026Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14026)
end

function Q14026Trigger:TriggerIn()
    print("[MainId: 14026][Trigger: Q14026Trigger] TriggerIn")
    actorMgr:GetActor("14026"):PlayerEnterDungeonWithData(1194, 157, 1402603, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q14026Trigger:PreTriggerIn()
    print("[MainId: 14026][Trigger: Q14026Trigger] PreTriggerIn")
end

function Q14026Trigger:LightUpTriggerIn()
    print("[MainId: 14026][Trigger: Q14026Trigger] LightUpTriggerIn")
end

function Q14026Trigger:TriggerOut()
    print("[MainId: 14026][Trigger: Q14026Trigger] TriggerOut")
end

return Q14026Trigger
