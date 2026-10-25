require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907305TriggerBlack = class("Q1907305TriggerBlack", GadgetActorProxy)
Q1907305TriggerBlack.defaultAlias = "Q1907305TriggerBlack"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q1907305TriggerBlack:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] OnPostDataPrepare")
    this = self
end

function Q1907305TriggerBlack:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907305TriggerBlack:TriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] TriggerIn")
    actorMgr:GetActor("19073"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, nil, nil, nil, 0, false, true)
    this:DestroySelf()
end

function Q1907305TriggerBlack:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] PreTriggerIn")
end

function Q1907305TriggerBlack:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] LightUpTriggerIn")
end

function Q1907305TriggerBlack:TriggerOut()
    print("[MainId: 19073][Trigger: Q1907305TriggerBlack] TriggerOut")
end

return Q1907305TriggerBlack
