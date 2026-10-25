require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13027TriggerFin = class("Q13027TriggerFin", GadgetActorProxy)
Q13027TriggerFin.defaultAlias = "Q13027TriggerFin"
local Q13027ClientConfig = require("Quest/Client/Q13027ClientConfig")

local this
local subIDs = Q13027ClientConfig.SubIDs
local npcs = Q13027ClientConfig.Npcs
local points = Q13027ClientConfig.Points
local datas = Q13027ClientConfig.Datas

function Q13027TriggerFin:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13027TriggerFin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13027TriggerFin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13027"):RequestInteraction(npcs.Npc13163Data.alias)
    this:DestroySelf()
end

function Q13027TriggerFin:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13027TriggerFin:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13027TriggerFin:TriggerOut()
    print("TriggerOut")
end

return Q13027TriggerFin
