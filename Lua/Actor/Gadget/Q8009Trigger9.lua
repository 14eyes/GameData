require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8009Trigger9 = class("Q8009Trigger9", GadgetActorProxy)
Q8009Trigger9.defaultAlias = "Q8009Trigger9"
local Q8009ClientConfig = require("Quest/Client/Q8009ClientConfig")

local this
local subIDs = Q8009ClientConfig.SubIDs
local npcs = Q8009ClientConfig.Npcs
local datas = Q8009ClientConfig.Datas

function Q8009Trigger9:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8009Trigger9:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8009Trigger9:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8009"):RequestInteraction(npcs.GaiaData.alias)
    this:DestroySelf()
end

function Q8009Trigger9:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8009Trigger9:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8009Trigger9:TriggerOut()
    print("TriggerOut")
end

return Q8009Trigger9
