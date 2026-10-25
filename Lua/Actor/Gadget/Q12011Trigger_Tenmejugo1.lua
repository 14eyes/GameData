require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12011Trigger_Tenmejugo1 = class("Q12011Trigger_Tenmejugo1", GadgetActorProxy)
Q12011Trigger_Tenmejugo1.defaultAlias = "Q12011Trigger_Tenmejugo1"
local Q12011ClientConfig = require("Quest/Client/Q12011ClientConfig")

local subIDs = Q12011ClientConfig.SubIDs
local npcs = Q12011ClientConfig.Npcs
local datas = Q12011ClientConfig.Datas

function Q12011Trigger_Tenmejugo1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12011Trigger_Tenmejugo1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12011Trigger_Tenmejugo1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12011"):RequestInteraction(npcs.Npc3027Data.alias)
    self:DestroySelf()
end

function Q12011Trigger_Tenmejugo1:TriggerOut()
    print("TriggerOut")
end

return Q12011Trigger_Tenmejugo1
