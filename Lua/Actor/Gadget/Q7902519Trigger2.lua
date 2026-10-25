require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902519Trigger2 = class("Q7902519Trigger2", GadgetActorProxy)
Q7902519Trigger2.defaultAlias = "Q7902519Trigger2"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902519Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902519Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902519Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902519)
    self:DestroySelf()
end

function Q7902519Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q7902519Trigger2
