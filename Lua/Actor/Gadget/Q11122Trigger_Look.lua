require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11122Trigger_Look = class("Q11122Trigger_Look", GadgetActorProxy)
Q11122Trigger_Look.defaultAlias = "Q11122Trigger_Look"
local Q11122ClientConfig = require("Quest/Client/Q11122ClientConfig")

local mainID = Q11122ClientConfig.MainID
local actorAlias = Q11122ClientConfig.ActorAlias
local subIDs = Q11122ClientConfig.SubIDs
local npcs = Q11122ClientConfig.Npcs
local gadgets = Q11122ClientConfig.Gadgets
local datas = Q11122ClientConfig.Datas

function Q11122Trigger_Look:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11122Trigger_Look:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11122Trigger_Look:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10408Data.alias)
    self:DestroySelf()
end

function Q11122Trigger_Look:TriggerOut()
    print("TriggerOut")
end

return Q11122Trigger_Look
