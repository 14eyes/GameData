require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401104Trigger = class("Q401104Trigger", GadgetActorProxy)
Q401104Trigger.defaultAlias = "Q401104Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401104Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401104Trigger] OnPostDataPrepare")
    this = self
end

function Q401104Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401104Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401104Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401104Trigger] TriggerIn")
    actorMgr:GetActor("4011"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4011"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401104Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401104Trigger] PreTriggerIn")
end

function Q401104Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401104Trigger] LightUpTriggerIn")
end

function Q401104Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401104Trigger] TriggerOut")
end

return Q401104Trigger
