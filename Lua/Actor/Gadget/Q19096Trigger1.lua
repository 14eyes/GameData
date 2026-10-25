require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19096Trigger1 = class("Q19096Trigger1", GadgetActorProxy)
Q19096Trigger1.defaultAlias = "Q19096Trigger1"
local Q19096ClientConfig = require("Quest/Client/Q19096ClientConfig")

local this
local subIDs = Q19096ClientConfig.SubIDs
local npcs = Q19096ClientConfig.Npcs
local points = Q19096ClientConfig.Points
local datas = Q19096ClientConfig.Datas

function Q19096Trigger1:OnPostDataPrepare()
    print("[MainId: 19096][Trigger: Q19096Trigger1] OnPostDataPrepare")
    this = self
end

function Q19096Trigger1:OnPostComponentPrepare()
    print("[MainId: 19096][Trigger: Q19096Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19096Trigger1:TriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger1] TriggerIn")
end

function Q19096Trigger1:PreTriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger1] PreTriggerIn")
end

function Q19096Trigger1:LightUpTriggerIn()
    print("[MainId: 19096][Trigger: Q19096Trigger1] LightUpTriggerIn")
    actorMgr:GetActor("19096"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("19096"):RequestInteraction(npcs.DilucData.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q19096Trigger1:TriggerOut()
    print("[MainId: 19096][Trigger: Q19096Trigger1] TriggerOut")
end

return Q19096Trigger1
