require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerBegin = class("Q13019TriggerBegin", GadgetActorProxy)
Q13019TriggerBegin.defaultAlias = "Q13019TriggerBegin"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerBegin:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerBegin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerBegin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13019"):RequestInteraction(npcs.Npc1056Data.alias)
    this:DestroySelf()
end

function Q13019TriggerBegin:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerBegin:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerBegin:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerBegin
