require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8009Trigger8 = class("Q8009Trigger8", GadgetActorProxy)
Q8009Trigger8.defaultAlias = "Q8009Trigger8"
local Q8009ClientConfig = require("Quest/Client/Q8009ClientConfig")

local this
local subIDs = Q8009ClientConfig.SubIDs
local npcs = Q8009ClientConfig.Npcs
local datas = Q8009ClientConfig.Datas

function Q8009Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8009Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8009Trigger8:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8009"):RequestInteraction(npcs.Npc4108Data.alias)
    this:DestroySelf()
end

function Q8009Trigger8:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8009Trigger8:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8009Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q8009Trigger8
