require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12012Trigger_Miss = class("Q12012Trigger_Miss", GadgetActorProxy)
Q12012Trigger_Miss.defaultAlias = "Q12012Trigger_Miss"
local Q12012ClientConfig = require("Quest/Client/Q12012ClientConfig")

local subIDs = Q12012ClientConfig.SubIDs
local npcs = Q12012ClientConfig.Npcs
local datas = Q12012ClientConfig.Datas

function Q12012Trigger_Miss:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12012Trigger_Miss:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12012Trigger_Miss:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12012"):RequestInteraction(npcs.Npc3035Data.alias)
    self:DestroySelf()
end

function Q12012Trigger_Miss:TriggerOut()
    print("TriggerOut")
end

return Q12012Trigger_Miss
