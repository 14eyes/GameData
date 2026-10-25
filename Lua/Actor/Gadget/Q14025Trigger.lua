require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14025Trigger = class("Q14025Trigger", GadgetActorProxy)
Q14025Trigger.defaultAlias = "Q14025Trigger"
local Q14025ClientConfig = require("Quest/Client/Q14025ClientConfig")

local this
local subIDs = Q14025ClientConfig.SubIDs
local npcs = Q14025ClientConfig.Npcs
local points = Q14025ClientConfig.Points
local datas = Q14025ClientConfig.Datas

function Q14025Trigger:OnPostDataPrepare()
    print("[MainId: 14025][Trigger: Q14025Trigger] OnPostDataPrepare")
    this = self
end

function Q14025Trigger:OnPostComponentPrepare()
    print("[MainId: 14025][Trigger: Q14025Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q14025Trigger:TriggerIn()
    print("[MainId: 14025][Trigger: Q14025Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14025")
    this:DestroySelf()
    actor:TransmitPlayerWithDialogTextByQuestId(1402501, 1, datas.DialogsId, 2)
end

function Q14025Trigger:PreTriggerIn()
    print("[MainId: 14025][Trigger: Q14025Trigger] PreTriggerIn")
end

function Q14025Trigger:LightUpTriggerIn()
    print("[MainId: 14025][Trigger: Q14025Trigger] LightUpTriggerIn")
end

function Q14025Trigger:TriggerOut()
    print("[MainId: 14025][Trigger: Q14025Trigger] TriggerOut")
end

return Q14025Trigger
