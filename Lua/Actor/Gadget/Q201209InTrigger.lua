require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201209InTrigger = class("Q201209InTrigger", GadgetActorProxy)
Q201209InTrigger.defaultAlias = "Q201209InTrigger"
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")

local mainID = Q2012ClientConfig.MainID
local actorAlias = Q2012ClientConfig.ActorAlias
local subIDs = Q2012ClientConfig.SubIDs
local npcs = Q2012ClientConfig.Npcs
local gadgets = Q2012ClientConfig.Gadgets
local datas = Q2012ClientConfig.Datas

function Q201209InTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201209InTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201209InTrigger:TriggerIn()
    print("TriggerIn reqest")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc12044Data.alias)
    self:DestroySelf()
end

function Q201209InTrigger:TriggerOut()
    print("TriggerOut")
end

return Q201209InTrigger
