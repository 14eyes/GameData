require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74050Trigger1 = class("Q74050Trigger1", GadgetActorProxy)
Q74050Trigger1.defaultAlias = "Q74050Trigger1"
local Q74050ClientConfig = require("Quest/Client/Q74050ClientConfig")

local this
local subIDs = Q74050ClientConfig.SubIDs
local npcs = Q74050ClientConfig.Npcs
local datas = Q74050ClientConfig.Datas

function Q74050Trigger1:OnPostDataPrepare()
    print("[MainId: 74050][Trigger: Q74050Trigger1] OnPostDataPrepare")
    this = self
end

function Q74050Trigger1:OnPostComponentPrepare()
    print("[MainId: 74050][Trigger: Q74050Trigger1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 5, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74050Trigger1:TriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger1] TriggerIn")
    actorMgr:GetActor("74050"):RequestInteraction(npcs.Npc21081Data.alias)
    this:DestroySelf()
end

function Q74050Trigger1:PreTriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger1] PreTriggerIn")
end

function Q74050Trigger1:LightUpTriggerIn()
    print("[MainId: 74050][Trigger: Q74050Trigger1] LightUpTriggerIn")
end

function Q74050Trigger1:TriggerOut()
    print("[MainId: 74050][Trigger: Q74050Trigger1] TriggerOut")
end

return Q74050Trigger1
