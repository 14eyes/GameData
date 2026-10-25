require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3029T14rigger = class("Q3029T14rigger", GadgetActorProxy)
Q3029T14rigger.defaultAlias = "Q3029T14rigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q3029T14rigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q3029T14rigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3029T14rigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):RequestInteraction(npcs.Npc10013Data.alias)
    this:DestroySelf()
end

function Q3029T14rigger:TriggerOut()
    print("TriggerOut")
end

return Q3029T14rigger
