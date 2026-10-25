require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerPre = class("Q13019TriggerPre", GadgetActorProxy)
Q13019TriggerPre.defaultAlias = "Q13019TriggerPre"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerPre:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerPre:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerPre:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13019"):RequestInteraction(npcs.Npc13162Data.alias)
    this:DestroySelf()
end

function Q13019TriggerPre:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerPre:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerPre:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerPre
