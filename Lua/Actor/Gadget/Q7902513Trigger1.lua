require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902513Trigger1 = class("Q7902513Trigger1", GadgetActorProxy)
Q7902513Trigger1.defaultAlias = "Q7902513Trigger1"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902513Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902513Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902513Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902513)
    self:DestroySelf()
end

function Q7902513Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q7902513Trigger1
