require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19073Trigger1 = class("Q19073Trigger1", GadgetActorProxy)
Q19073Trigger1.defaultAlias = "Q19073Trigger1"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q19073Trigger1:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger1] OnPostDataPrepare")
    this = self
end

function Q19073Trigger1:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19073Trigger1:TriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger1] TriggerIn")
    actorMgr:GetActor("19073"):RequestInteraction(npcs.Coop_KaeyaData.alias)
    this:DestroySelf()
end

function Q19073Trigger1:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger1] PreTriggerIn")
end

function Q19073Trigger1:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger1] LightUpTriggerIn")
end

function Q19073Trigger1:TriggerOut()
    print("[MainId: 19073][Trigger: Q19073Trigger1] TriggerOut")
end

return Q19073Trigger1
