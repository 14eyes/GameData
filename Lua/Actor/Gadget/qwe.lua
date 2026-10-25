require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local qwe = class("qwe", GadgetActorProxy)
qwe.defaultAlias = "qwe"
local Q75139ClientConfig = require("Quest/Client/Q75139ClientConfig")

local this
local subIDs = Q75139ClientConfig.SubIDs
local npcs = Q75139ClientConfig.Npcs
local points = Q75139ClientConfig.Points

function qwe:OnPostDataPrepare()
    print("qwe - OnPostDataPrepare")
    this = self
end

function qwe:OnPostComponentPrepare()
    print("qwe - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75139)
end

function qwe:TriggerIn()
    print("qwe - TriggerIn")
    actorMgr:GetActor("75139"):RequestInteraction(npcs.Npc13551.alias, "qwe", true)
    this:DestroySelf()
end

function qwe:PreTriggerIn()
    print("qwe - PreTriggerIn")
end

function qwe:LightUpTriggerIn()
    print("qwe - LightUpTriggerIn")
end

function qwe:TriggerOut()
    print("qwe - TriggerOut")
end

return qwe
