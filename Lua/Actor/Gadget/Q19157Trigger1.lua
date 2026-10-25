require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19157Trigger1 = class("Q19157Trigger1", GadgetActorProxy)
Q19157Trigger1.defaultAlias = "Q19157Trigger1"
local Q19157ClientConfig = require("Quest/Client/Q19157ClientConfig")

local this
local subIDs = Q19157ClientConfig.SubIDs
local npcs = Q19157ClientConfig.Npcs
local points = Q19157ClientConfig.Points

function Q19157Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19157Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19157Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19157"):RequestInteraction(npcs.Coop_LaylaData.alias)
    this:DestroySelf()
end

function Q19157Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19157Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("19157"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q19157Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19157Trigger1
