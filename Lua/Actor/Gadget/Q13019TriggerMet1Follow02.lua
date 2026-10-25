require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerMet1Follow02 = class("Q13019TriggerMet1Follow02", GadgetActorProxy)
Q13019TriggerMet1Follow02.defaultAlias = "Q13019TriggerMet1Follow02"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerMet1Follow02:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerMet1Follow02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerMet1Follow02:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13019"):RequestInteraction(npcs.Npc13162Data.alias)
    this:DestroySelf()
end

function Q13019TriggerMet1Follow02:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerMet1Follow02:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerMet1Follow02:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerMet1Follow02
