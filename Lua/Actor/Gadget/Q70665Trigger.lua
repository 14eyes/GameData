require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger = class("Q70665Trigger", GadgetActorProxy)
Q70665Trigger.defaultAlias = "Q70665Trigger"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q70665Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70665"):RequestInteraction(npcs.Npc1019Data.alias)
    this:DestroySelf()
end

function Q70665Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger
